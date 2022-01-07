
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int swr_ctx; int sws_ctx; int tmp_frame; int frame; int enc; } ;
typedef TYPE_1__ OutputStream ;
typedef int AVFormatContext ;


 int av_frame_free (int *) ;
 int avcodec_free_context (int *) ;
 int swr_free (int *) ;
 int sws_freeContext (int ) ;

__attribute__((used)) static void close_stream(AVFormatContext *oc, OutputStream *ost)
{
    avcodec_free_context(&ost->enc);
    av_frame_free(&ost->frame);
    av_frame_free(&ost->tmp_frame);
    sws_freeContext(ost->sws_ctx);
    swr_free(&ost->swr_ctx);
}
