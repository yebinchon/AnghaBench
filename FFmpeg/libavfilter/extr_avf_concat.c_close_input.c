
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* input_pads; TYPE_3__* priv; } ;
struct TYPE_9__ {int nb_in_active; TYPE_1__* in; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int eof; } ;
typedef TYPE_3__ ConcatContext ;
typedef TYPE_4__ AVFilterContext ;


 int AV_LOG_VERBOSE ;
 int av_log (TYPE_4__*,int ,char*,int ,int ) ;

__attribute__((used)) static void close_input(AVFilterContext *ctx, unsigned in_no)
{
    ConcatContext *cat = ctx->priv;

    cat->in[in_no].eof = 1;
    cat->nb_in_active--;
    av_log(ctx, AV_LOG_VERBOSE, "EOF on %s, %d streams left in segment.\n",
           ctx->input_pads[in_no].name, cat->nb_in_active);
}
