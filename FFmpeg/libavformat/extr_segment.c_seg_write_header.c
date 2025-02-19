
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ seekable; } ;
struct TYPE_20__ {scalar_t__ codec_id; scalar_t__ codec_tag; } ;
struct TYPE_19__ {int nb_streams; int (* io_open ) (TYPE_4__*,TYPE_7__**,int ,int ,int *) ;TYPE_7__* pb; int url; TYPE_3__** streams; TYPE_1__* oformat; TYPE_2__* priv_data; } ;
struct TYPE_18__ {int time_base; int sample_aspect_ratio; TYPE_5__* codecpar; } ;
struct TYPE_17__ {int individual_header_trailer; scalar_t__ header_filename; int write_header_trailer; int header_written; TYPE_4__* avf; } ;
struct TYPE_16__ {int codec_tag; } ;
typedef TYPE_2__ SegmentContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVCodecParameters ;


 int AVIO_FLAG_WRITE ;
 scalar_t__ av_codec_get_id (int ,scalar_t__) ;
 scalar_t__ av_codec_get_tag (int ,scalar_t__) ;
 int av_write_frame (TYPE_4__*,int *) ;
 int avcodec_parameters_copy (TYPE_5__*,TYPE_5__*) ;
 int avformat_write_header (TYPE_4__*,int *) ;
 int close_null_ctxp (TYPE_7__**) ;
 int ff_format_io_close (TYPE_4__*,TYPE_7__**) ;
 int stub1 (TYPE_4__*,TYPE_7__**,int ,int ,int *) ;

__attribute__((used)) static int seg_write_header(AVFormatContext *s)
{
    SegmentContext *seg = s->priv_data;
    AVFormatContext *oc = seg->avf;
    int ret, i;

    if (!seg->header_written) {
        for (i = 0; i < s->nb_streams; i++) {
            AVStream *st = oc->streams[i];
            AVCodecParameters *ipar, *opar;

            ipar = s->streams[i]->codecpar;
            opar = oc->streams[i]->codecpar;
            avcodec_parameters_copy(opar, ipar);
            if (!oc->oformat->codec_tag ||
                av_codec_get_id (oc->oformat->codec_tag, ipar->codec_tag) == opar->codec_id ||
                av_codec_get_tag(oc->oformat->codec_tag, ipar->codec_id) <= 0) {
                opar->codec_tag = ipar->codec_tag;
            } else {
                opar->codec_tag = 0;
            }
            st->sample_aspect_ratio = s->streams[i]->sample_aspect_ratio;
            st->time_base = s->streams[i]->time_base;
        }
        ret = avformat_write_header(oc, ((void*)0));
        if (ret < 0)
            return ret;
    }

    if (!seg->write_header_trailer || seg->header_filename) {
        if (seg->header_filename) {
            av_write_frame(oc, ((void*)0));
            ff_format_io_close(oc, &oc->pb);
        } else {
            close_null_ctxp(&oc->pb);
        }
        if ((ret = oc->io_open(oc, &oc->pb, oc->url, AVIO_FLAG_WRITE, ((void*)0))) < 0)
            return ret;
        if (!seg->individual_header_trailer)
            oc->pb->seekable = 0;
    }

    return 0;
}
