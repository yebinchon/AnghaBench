
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int attributes; } ;
typedef TYPE_2__ VAAPIFramesContext ;
struct TYPE_9__ {TYPE_1__* internal; TYPE_3__* hwctx; } ;
struct TYPE_8__ {int surface_ids; } ;
struct TYPE_6__ {TYPE_2__* priv; } ;
typedef TYPE_3__ AVVAAPIFramesContext ;
typedef TYPE_4__ AVHWFramesContext ;


 int av_freep (int *) ;

__attribute__((used)) static void vaapi_frames_uninit(AVHWFramesContext *hwfc)
{
    AVVAAPIFramesContext *avfc = hwfc->hwctx;
    VAAPIFramesContext *ctx = hwfc->internal->priv;

    av_freep(&avfc->surface_ids);
    av_freep(&ctx->attributes);
}
