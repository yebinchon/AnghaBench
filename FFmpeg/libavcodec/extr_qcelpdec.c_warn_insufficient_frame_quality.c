
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame_number; } ;
typedef TYPE_1__ AVCodecContext ;


 int AV_LOG_WARNING ;
 int av_log (TYPE_1__*,int ,char*,int ,char const*) ;

__attribute__((used)) static void warn_insufficient_frame_quality(AVCodecContext *avctx,
                                            const char *message)
{
    av_log(avctx, AV_LOG_WARNING, "Frame #%d, IFQ: %s\n",
           avctx->frame_number, message);
}
