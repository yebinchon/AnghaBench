
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pb; } ;
struct TYPE_6__ {int sample_queue; int par; TYPE_2__* rtp_ctx; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ AVFormatContext ;


 int av_write_trailer (TYPE_2__*) ;
 int avcodec_parameters_free (int *) ;
 int avformat_free_context (TYPE_2__*) ;
 int ffio_free_dyn_buf (scalar_t__*) ;
 int sample_queue_free (int *) ;

void ff_mov_close_hinting(MOVTrack *track)
{
    AVFormatContext *rtp_ctx = track->rtp_ctx;

    avcodec_parameters_free(&track->par);
    sample_queue_free(&track->sample_queue);
    if (!rtp_ctx)
        return;
    if (rtp_ctx->pb) {
        av_write_trailer(rtp_ctx);
        ffio_free_dyn_buf(&rtp_ctx->pb);
    }
    avformat_free_context(rtp_ctx);
}
