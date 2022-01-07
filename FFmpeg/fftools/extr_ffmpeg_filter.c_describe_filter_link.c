
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_7__ {int nb_inputs; int nb_outputs; TYPE_1__* filter; int * output_pads; int * input_pads; } ;
struct TYPE_6__ {int pad_idx; TYPE_3__* filter_ctx; } ;
struct TYPE_5__ {int name; } ;
typedef int FilterGraph ;
typedef int AVIOContext ;
typedef int AVFilterPad ;
typedef TYPE_2__ AVFilterInOut ;
typedef TYPE_3__ AVFilterContext ;


 int avfilter_pad_get_name (int *,int ) ;
 int avio_close_dyn_buf (int *,char**) ;
 scalar_t__ avio_open_dyn_buf (int **) ;
 int avio_printf (int *,char*,int ) ;
 int avio_w8 (int *,int ) ;
 int exit_program (int) ;

__attribute__((used)) static char *describe_filter_link(FilterGraph *fg, AVFilterInOut *inout, int in)
{
    AVFilterContext *ctx = inout->filter_ctx;
    AVFilterPad *pads = in ? ctx->input_pads : ctx->output_pads;
    int nb_pads = in ? ctx->nb_inputs : ctx->nb_outputs;
    AVIOContext *pb;
    uint8_t *res = ((void*)0);

    if (avio_open_dyn_buf(&pb) < 0)
        exit_program(1);

    avio_printf(pb, "%s", ctx->filter->name);
    if (nb_pads > 1)
        avio_printf(pb, ":%s", avfilter_pad_get_name(pads, inout->pad_idx));
    avio_w8(pb, 0);
    avio_close_dyn_buf(pb, &res);
    return res;
}
