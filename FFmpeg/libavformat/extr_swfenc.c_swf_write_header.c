
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint16_t ;
typedef int int64_t ;
typedef int buf1 ;
struct TYPE_23__ {scalar_t__ codec_type; scalar_t__ codec_id; int width; int height; int sample_rate; int channels; } ;
struct TYPE_22__ {int nb_streams; int * pb; TYPE_3__* oformat; TYPE_2__** streams; TYPE_4__* priv_data; } ;
struct TYPE_21__ {int buf; } ;
struct TYPE_20__ {long long samples_per_frame; TYPE_7__* audio_par; TYPE_7__* video_par; int duration_pos; TYPE_2__* video_st; int audio_fifo; scalar_t__ video_frame_number; scalar_t__ swf_frame_number; scalar_t__ sound_samples; } ;
struct TYPE_19__ {int name; } ;
struct TYPE_17__ {int den; int num; } ;
struct TYPE_18__ {TYPE_1__ time_base; TYPE_7__* codecpar; } ;
typedef TYPE_4__ SWFContext ;
typedef TYPE_5__ PutBitContext ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;
typedef TYPE_7__ AVCodecParameters ;


 int AUDIO_FIFO_SIZE ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 scalar_t__ AV_CODEC_ID_FLV1 ;
 scalar_t__ AV_CODEC_ID_MJPEG ;
 scalar_t__ AV_CODEC_ID_MP3 ;
 scalar_t__ AV_CODEC_ID_VP6F ;
 int AV_LOG_ERROR ;
 int BITMAP_ID ;
 int DUMMY_DURATION ;
 int DUMMY_FILE_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int FLAG_MOVETO ;
 int FLAG_SETFILL0 ;
 int FRAC_BITS ;
 int SHAPE_ID ;
 int TAG_DEFINESHAPE ;
 int TAG_FILEATTRIBUTES ;
 int TAG_STREAMHEAD2 ;
 int av_fifo_alloc (int ) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 int avio_flush (int *) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wl16 (int *,int) ;
 int avio_wl32 (int *,int) ;
 int avio_write (int *,char*,int) ;
 int flush_put_bits (TYPE_5__*) ;
 int init_put_bits (TYPE_5__*,char*,int) ;
 int put_bits (TYPE_5__*,int,int) ;
 int put_bits_ptr (TYPE_5__*) ;
 int put_swf_end_tag (TYPE_6__*) ;
 int put_swf_line_edge (TYPE_5__*,int,int) ;
 int put_swf_matrix (int *,int,int ,int ,int,int ,int ) ;
 int put_swf_rect (int *,int ,int,int ,int) ;
 int put_swf_tag (TYPE_6__*,int ) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int swf_write_header(AVFormatContext *s)
{
    SWFContext *swf = s->priv_data;
    AVIOContext *pb = s->pb;
    PutBitContext p;
    uint8_t buf1[256];
    int i, width, height, rate, rate_base;
    int version;

    swf->sound_samples = 0;
    swf->swf_frame_number = 0;
    swf->video_frame_number = 0;

    for(i=0;i<s->nb_streams;i++) {
        AVCodecParameters *par = s->streams[i]->codecpar;
        if (par->codec_type == AVMEDIA_TYPE_AUDIO) {
            if (swf->audio_par) {
                av_log(s, AV_LOG_ERROR, "SWF muxer only supports 1 audio stream\n");
                return AVERROR_INVALIDDATA;
            }
            if (par->codec_id == AV_CODEC_ID_MP3) {
                swf->audio_par = par;
                swf->audio_fifo= av_fifo_alloc(AUDIO_FIFO_SIZE);
                if (!swf->audio_fifo)
                    return AVERROR(ENOMEM);
            } else {
                av_log(s, AV_LOG_ERROR, "SWF muxer only supports MP3\n");
                return -1;
            }
        } else {
            if (swf->video_par) {
                av_log(s, AV_LOG_ERROR, "SWF muxer only supports 1 video stream\n");
                return AVERROR_INVALIDDATA;
            }
            if (par->codec_id == AV_CODEC_ID_VP6F ||
                par->codec_id == AV_CODEC_ID_FLV1 ||
                par->codec_id == AV_CODEC_ID_MJPEG) {
                swf->video_st = s->streams[i];
                swf->video_par = par;
            } else {
                av_log(s, AV_LOG_ERROR, "SWF muxer only supports VP6, FLV1 and MJPEG\n");
                return -1;
            }
        }
    }

    if (!swf->video_par) {

        width = 320;
        height = 200;
        rate = 10;
        rate_base= 1;
    } else {
        width = swf->video_par->width;
        height = swf->video_par->height;

        rate = swf->video_st->time_base.den;
        rate_base = swf->video_st->time_base.num;
    }

    if (!swf->audio_par)
        swf->samples_per_frame = (44100LL * rate_base) / rate;
    else
        swf->samples_per_frame = (swf->audio_par->sample_rate * rate_base) / rate;

    avio_write(pb, "FWS", 3);

    if (!strcmp("avm2", s->oformat->name))
        version = 9;
    else if (swf->video_par && swf->video_par->codec_id == AV_CODEC_ID_VP6F)
        version = 8;
    else if (swf->video_par && swf->video_par->codec_id == AV_CODEC_ID_FLV1)
        version = 6;
    else
        version = 4;
    avio_w8(pb, version);

    avio_wl32(pb, DUMMY_FILE_SIZE);


    put_swf_rect(pb, 0, width * 20, 0, height * 20);
    if ((rate * 256LL) / rate_base >= (1<<16)) {
        av_log(s, AV_LOG_ERROR, "Invalid (too large) frame rate %d/%d\n", rate, rate_base);
        return AVERROR(EINVAL);
    }
    avio_wl16(pb, (rate * 256) / rate_base);
    swf->duration_pos = avio_tell(pb);
    avio_wl16(pb, (uint16_t)(DUMMY_DURATION * (int64_t)rate / rate_base));


    if (version == 9) {
        put_swf_tag(s, TAG_FILEATTRIBUTES);
        avio_wl32(pb, 1<<3);
        put_swf_end_tag(s);
    }


    if (swf->video_par && swf->video_par->codec_id == AV_CODEC_ID_MJPEG) {
        put_swf_tag(s, TAG_DEFINESHAPE);

        avio_wl16(pb, SHAPE_ID);

        put_swf_rect(pb, 0, width, 0, height);

        avio_w8(pb, 1);
        avio_w8(pb, 0x41);
        avio_wl16(pb, BITMAP_ID);

        put_swf_matrix(pb, 1 << FRAC_BITS, 0,
                       0, 1 << FRAC_BITS, 0, 0);
        avio_w8(pb, 0);


        init_put_bits(&p, buf1, sizeof(buf1));
        put_bits(&p, 4, 1);
        put_bits(&p, 4, 0);

        put_bits(&p, 1, 0);
        put_bits(&p, 5, FLAG_MOVETO | FLAG_SETFILL0);
        put_bits(&p, 5, 1);
        put_bits(&p, 1, 0);
        put_bits(&p, 1, 0);
        put_bits(&p, 1, 1);


        put_swf_line_edge(&p, width, 0);
        put_swf_line_edge(&p, 0, height);
        put_swf_line_edge(&p, -width, 0);
        put_swf_line_edge(&p, 0, -height);


        put_bits(&p, 1, 0);
        put_bits(&p, 5, 0);

        flush_put_bits(&p);
        avio_write(pb, buf1, put_bits_ptr(&p) - p.buf);

        put_swf_end_tag(s);
    }

    if (swf->audio_par && swf->audio_par->codec_id == AV_CODEC_ID_MP3) {
        int v = 0;


        put_swf_tag(s, TAG_STREAMHEAD2);
        switch(swf->audio_par->sample_rate) {
        case 11025: v |= 1 << 2; break;
        case 22050: v |= 2 << 2; break;
        case 44100: v |= 3 << 2; break;
        default:

            av_log(s, AV_LOG_ERROR, "swf does not support that sample rate, choose from (44100, 22050, 11025).\n");
            return -1;
        }
        v |= 0x02;
        if (swf->audio_par->channels == 2)
            v |= 0x01;
        avio_w8(s->pb, v);
        v |= 0x20;
        avio_w8(s->pb, v);
        avio_wl16(s->pb, swf->samples_per_frame);
        avio_wl16(s->pb, 0);

        put_swf_end_tag(s);
    }

    avio_flush(s->pb);
    return 0;
}
