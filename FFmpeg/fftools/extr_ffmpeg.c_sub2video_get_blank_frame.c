
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int height; int* linesize; int * data; int format; scalar_t__ width; } ;
struct TYPE_9__ {int h; TYPE_4__* frame; scalar_t__ w; } ;
struct TYPE_10__ {TYPE_2__ sub2video; TYPE_1__* dec_ctx; } ;
struct TYPE_8__ {int height; scalar_t__ width; } ;
typedef TYPE_3__ InputStream ;
typedef TYPE_4__ AVFrame ;


 int AV_PIX_FMT_RGB32 ;
 int av_frame_get_buffer (TYPE_4__*,int) ;
 int av_frame_unref (TYPE_4__*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int sub2video_get_blank_frame(InputStream *ist)
{
    int ret;
    AVFrame *frame = ist->sub2video.frame;

    av_frame_unref(frame);
    ist->sub2video.frame->width = ist->dec_ctx->width ? ist->dec_ctx->width : ist->sub2video.w;
    ist->sub2video.frame->height = ist->dec_ctx->height ? ist->dec_ctx->height : ist->sub2video.h;
    ist->sub2video.frame->format = AV_PIX_FMT_RGB32;
    if ((ret = av_frame_get_buffer(frame, 32)) < 0)
        return ret;
    memset(frame->data[0], 0, frame->height * frame->linesize[0]);
    return 0;
}
