
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t* qps; int * filter_limit_values; int bounding_values_array; } ;
typedef TYPE_1__ Vp3DecodeContext ;


 int ff_vp3dsp_set_bounding_values (int ,int ) ;

__attribute__((used)) static void init_loop_filter(Vp3DecodeContext *s)
{
    ff_vp3dsp_set_bounding_values(s->bounding_values_array, s->filter_limit_values[s->qps[0]]);
}
