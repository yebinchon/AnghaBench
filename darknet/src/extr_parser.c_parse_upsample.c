
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int c; int h; int w; int batch; } ;
typedef TYPE_1__ size_params ;
typedef int network ;
typedef int list ;
struct TYPE_7__ {int scale; } ;
typedef TYPE_2__ layer ;


 TYPE_2__ make_upsample_layer (int ,int ,int ,int ,int) ;
 int option_find_float_quiet (int *,char*,int) ;
 int option_find_int (int *,char*,int) ;

layer parse_upsample(list *options, size_params params, network *net)
{

    int stride = option_find_int(options, "stride",2);
    layer l = make_upsample_layer(params.batch, params.w, params.h, params.c, stride);
    l.scale = option_find_float_quiet(options, "scale", 1);
    return l;
}
