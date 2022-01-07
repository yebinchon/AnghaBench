
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * outputs; TYPE_1__* priv; int ** inputs; } ;
struct TYPE_8__ {TYPE_3__* parent; } ;
struct TYPE_7__ {int palette_loaded; } ;
typedef TYPE_1__ PaletteUseContext ;
typedef TYPE_2__ FFFrameSync ;
typedef int AVFrame ;
typedef int AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR_BUG ;
 int apply_palette (int *,int *,int **) ;
 int av_frame_free (int **) ;
 int ff_filter_frame (int ,int *) ;
 int ff_framesync_dualinput_get_writable (TYPE_2__*,int **,int **) ;
 int load_palette (TYPE_1__*,int *) ;

__attribute__((used)) static int load_apply_palette(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFilterLink *inlink = ctx->inputs[0];
    PaletteUseContext *s = ctx->priv;
    AVFrame *master, *second, *out = ((void*)0);
    int ret;


    ret = ff_framesync_dualinput_get_writable(fs, &master, &second);
    if (ret < 0)
        return ret;
    if (!master || !second) {
        ret = AVERROR_BUG;
        goto error;
    }
    if (!s->palette_loaded) {
        load_palette(s, second);
    }
    ret = apply_palette(inlink, master, &out);
    if (ret < 0)
        goto error;
    return ff_filter_frame(ctx->outputs[0], out);

error:
    av_frame_free(&master);
    return ret;
}
