
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;
typedef struct TYPE_20__ TYPE_16__ ;
typedef struct TYPE_19__ TYPE_15__ ;


struct TYPE_23__ {int nb_streams; int packets_written; int new_start; scalar_t__ fmp4_init_filename; int base_output_dirname; int out; int basename; scalar_t__ init_range_length; scalar_t__ start_pos; TYPE_1__** streams; TYPE_15__* vtt_oformat; TYPE_5__* vtt_avf; TYPE_15__* oformat; TYPE_5__* avf; } ;
typedef TYPE_2__ VariantStream ;
struct TYPE_26__ {int pb; TYPE_15__* oformat; int * metadata; int io_close; int io_open; int opaque; int max_delay; int interrupt_callback; int url; TYPE_3__* priv_data; } ;
struct TYPE_25__ {int * metadata; int time_base; int sample_aspect_ratio; TYPE_16__* codecpar; } ;
struct TYPE_24__ {int flags; scalar_t__ max_seg_size; scalar_t__ segment_type; scalar_t__ http_persistent; scalar_t__ format_options_str; int * format_options; } ;
struct TYPE_22__ {int * metadata; int time_base; int sample_aspect_ratio; TYPE_17__* codecpar; } ;
struct TYPE_21__ {scalar_t__ codec_type; scalar_t__ codec_tag; int codec_id; } ;
struct TYPE_20__ {scalar_t__ codec_id; scalar_t__ codec_tag; } ;
struct TYPE_19__ {int codec_tag; } ;
typedef TYPE_3__ HLSContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ;
 int AV_DICT_APPEND ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 int ENOMEM ;
 int HLS_SINGLE_FILE ;
 scalar_t__ SEGMENT_TYPE_FMP4 ;
 scalar_t__ av_codec_get_id (int ,scalar_t__) ;
 scalar_t__ av_codec_get_tag (int ,int ) ;
 int av_dict_copy (int **,int *,int ) ;
 scalar_t__ av_dict_count (int *) ;
 int av_dict_free (int **) ;
 int av_dict_parse_string (int **,scalar_t__,char*,char*,int ) ;
 int av_dict_set (int **,char*,char*,int ) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_strdup (char*) ;
 int avcodec_parameters_copy (TYPE_16__*,TYPE_17__*) ;
 int avformat_alloc_output_context2 (TYPE_5__**,TYPE_15__*,int *,int *) ;
 int avformat_init_output (TYPE_5__*,int **) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_flush (int ) ;
 int avio_open_dyn_buf (int *) ;
 int hlsenc_io_open (TYPE_5__*,int *,int ,int **) ;
 int set_http_options (TYPE_5__*,int **,TYPE_3__*) ;

__attribute__((used)) static int hls_mux_init(AVFormatContext *s, VariantStream *vs)
{
    AVDictionary *options = ((void*)0);
    HLSContext *hls = s->priv_data;
    AVFormatContext *oc;
    AVFormatContext *vtt_oc = ((void*)0);
    int byterange_mode = (hls->flags & HLS_SINGLE_FILE) || (hls->max_seg_size > 0);
    int i, ret;

    ret = avformat_alloc_output_context2(&vs->avf, vs->oformat, ((void*)0), ((void*)0));
    if (ret < 0)
        return ret;
    oc = vs->avf;

    oc->url = av_strdup("");
    if (!oc->url)
        return AVERROR(ENOMEM);

    oc->oformat = vs->oformat;
    oc->interrupt_callback = s->interrupt_callback;
    oc->max_delay = s->max_delay;
    oc->opaque = s->opaque;
    oc->io_open = s->io_open;
    oc->io_close = s->io_close;
    av_dict_copy(&oc->metadata, s->metadata, 0);

    if (vs->vtt_oformat) {
        ret = avformat_alloc_output_context2(&vs->vtt_avf, vs->vtt_oformat, ((void*)0), ((void*)0));
        if (ret < 0)
            return ret;
        vtt_oc = vs->vtt_avf;
        vtt_oc->oformat = vs->vtt_oformat;
        av_dict_copy(&vtt_oc->metadata, s->metadata, 0);
    }

    for (i = 0; i < vs->nb_streams; i++) {
        AVStream *st;
        AVFormatContext *loc;
        if (vs->streams[i]->codecpar->codec_type == AVMEDIA_TYPE_SUBTITLE)
            loc = vtt_oc;
        else
            loc = oc;

        if (!(st = avformat_new_stream(loc, ((void*)0))))
            return AVERROR(ENOMEM);
        avcodec_parameters_copy(st->codecpar, vs->streams[i]->codecpar);
        if (!oc->oformat->codec_tag ||
            av_codec_get_id (oc->oformat->codec_tag, vs->streams[i]->codecpar->codec_tag) == st->codecpar->codec_id ||
            av_codec_get_tag(oc->oformat->codec_tag, vs->streams[i]->codecpar->codec_id) <= 0) {
            st->codecpar->codec_tag = vs->streams[i]->codecpar->codec_tag;
        } else {
            st->codecpar->codec_tag = 0;
        }

        st->sample_aspect_ratio = vs->streams[i]->sample_aspect_ratio;
        st->time_base = vs->streams[i]->time_base;
        av_dict_copy(&st->metadata, vs->streams[i]->metadata, 0);
    }

    vs->packets_written = 1;
    vs->start_pos = 0;
    vs->new_start = 1;

    if (hls->segment_type == SEGMENT_TYPE_FMP4 && hls->max_seg_size > 0) {
        if (hls->http_persistent > 0) {

            av_log(s, AV_LOG_WARNING, "http persistent mode is currently unsupported for fragment mp4 in the HLS muxer.\n");
        }
        if (hls->max_seg_size > 0) {
            av_log(s, AV_LOG_WARNING, "Multi-file byterange mode is currently unsupported in the HLS muxer.\n");
            return AVERROR_PATCHWELCOME;
        }
    }

    vs->packets_written = 0;
    vs->init_range_length = 0;
    set_http_options(s, &options, hls);
    if ((ret = avio_open_dyn_buf(&oc->pb)) < 0)
        return ret;

    if (hls->segment_type == SEGMENT_TYPE_FMP4) {
        if (byterange_mode) {
            ret = hlsenc_io_open(s, &vs->out, vs->basename, &options);
        } else {
            ret = hlsenc_io_open(s, &vs->out, vs->base_output_dirname, &options);
        }
    }
    av_dict_free(&options);
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "Failed to open segment '%s'\n", vs->fmp4_init_filename);
        return ret;
    }

    if (hls->format_options_str) {
        ret = av_dict_parse_string(&hls->format_options, hls->format_options_str, "=", ":", 0);
        if (ret < 0) {
            av_log(s, AV_LOG_ERROR, "Could not parse format options list '%s'\n",
                   hls->format_options_str);
            return ret;
        }
    }

    av_dict_copy(&options, hls->format_options, 0);
    if (hls->segment_type == SEGMENT_TYPE_FMP4) {
        av_dict_set(&options, "fflags", "-autobsf", 0);
        av_dict_set(&options, "movflags", "+frag_custom+dash+delay_moov", AV_DICT_APPEND);
        ret = avformat_init_output(oc, &options);
        if (ret < 0)
            return ret;
        if (av_dict_count(options)) {
            av_log(s, AV_LOG_ERROR, "Some of the provided format options in '%s' are not recognized\n", hls->format_options_str);
            av_dict_free(&options);
            return AVERROR(EINVAL);
        }
    }
    avio_flush(oc->pb);
    av_dict_free(&options);
    return 0;
}
