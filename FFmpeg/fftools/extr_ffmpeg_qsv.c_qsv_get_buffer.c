
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opaque; } ;
struct TYPE_4__ {int hw_frames_ctx; } ;
typedef TYPE_1__ InputStream ;
typedef int AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int av_hwframe_get_buffer (int ,int *,int ) ;

__attribute__((used)) static int qsv_get_buffer(AVCodecContext *s, AVFrame *frame, int flags)
{
    InputStream *ist = s->opaque;

    return av_hwframe_get_buffer(ist->hw_frames_ctx, frame, 0);
}
