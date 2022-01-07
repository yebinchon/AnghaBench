
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int int64_t ;
struct TYPE_20__ {scalar_t__ codec_type; int sample_rate; } ;
struct TYPE_19__ {int start_time; } ;
struct TYPE_18__ {int member_0; int member_1; } ;
struct TYPE_17__ {int nb_streams; int ist_index; scalar_t__ loop; int time_base; int duration; } ;
struct TYPE_14__ {scalar_t__ num; } ;
struct TYPE_16__ {int nb_samples; TYPE_1__* st; scalar_t__ min_pts; scalar_t__ max_pts; TYPE_13__ framerate; TYPE_6__* dec_ctx; } ;
struct TYPE_15__ {int time_base; TYPE_13__ avg_frame_rate; } ;
typedef TYPE_2__ InputStream ;
typedef TYPE_3__ InputFile ;
typedef TYPE_4__ AVRational ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVCodecContext ;


 scalar_t__ AVMEDIA_TYPE_AUDIO ;
 int INT64_MIN ;
 TYPE_4__ av_inv_q (TYPE_13__) ;
 int av_rescale_q (int,TYPE_4__,int ) ;
 int avformat_seek_file (TYPE_5__*,int,int ,int ,int ,int ) ;
 int duration_max (int,int *,int ,int ) ;
 TYPE_2__** input_streams ;

__attribute__((used)) static int seek_to_start(InputFile *ifile, AVFormatContext *is)
{
    InputStream *ist;
    AVCodecContext *avctx;
    int i, ret, has_audio = 0;
    int64_t duration = 0;

    ret = avformat_seek_file(is, -1, INT64_MIN, is->start_time, is->start_time, 0);
    if (ret < 0)
        return ret;

    for (i = 0; i < ifile->nb_streams; i++) {
        ist = input_streams[ifile->ist_index + i];
        avctx = ist->dec_ctx;




        if (avctx->codec_type == AVMEDIA_TYPE_AUDIO && ist->nb_samples)
            has_audio = 1;
    }

    for (i = 0; i < ifile->nb_streams; i++) {
        ist = input_streams[ifile->ist_index + i];
        avctx = ist->dec_ctx;

        if (has_audio) {
            if (avctx->codec_type == AVMEDIA_TYPE_AUDIO && ist->nb_samples) {
                AVRational sample_rate = {1, avctx->sample_rate};

                duration = av_rescale_q(ist->nb_samples, sample_rate, ist->st->time_base);
            } else {
                continue;
            }
        } else {
            if (ist->framerate.num) {
                duration = av_rescale_q(1, av_inv_q(ist->framerate), ist->st->time_base);
            } else if (ist->st->avg_frame_rate.num) {
                duration = av_rescale_q(1, av_inv_q(ist->st->avg_frame_rate), ist->st->time_base);
            } else {
                duration = 1;
            }
        }
        if (!ifile->duration)
            ifile->time_base = ist->st->time_base;


        duration += ist->max_pts - ist->min_pts;
        ifile->time_base = duration_max(duration, &ifile->duration, ist->st->time_base,
                                        ifile->time_base);
    }

    if (ifile->loop > 0)
        ifile->loop--;

    return ret;
}
