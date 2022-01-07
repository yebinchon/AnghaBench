
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int frames_ctx; int frame; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int tmp_frame; TYPE_4__* stages; } ;
typedef TYPE_1__ NPPTransposeContext ;
typedef TYPE_2__ AVFilterContext ;


 int FF_ARRAY_ELEMS (TYPE_4__*) ;
 int av_buffer_unref (int *) ;
 int av_frame_free (int *) ;

__attribute__((used)) static void npptranspose_uninit(AVFilterContext *ctx)
{
    NPPTransposeContext *s = ctx->priv;
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(s->stages); i++) {
        av_frame_free(&s->stages[i].frame);
        av_buffer_unref(&s->stages[i].frames_ctx);
    }

    av_frame_free(&s->tmp_frame);
}
