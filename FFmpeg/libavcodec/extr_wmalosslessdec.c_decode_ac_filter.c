
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int acfilter_order; void* acfilter_scaling; int gb; scalar_t__* acfilter_coeffs; } ;
typedef TYPE_1__ WmallDecodeCtx ;


 void* get_bits (int *,int) ;
 scalar_t__ get_bitsz (int *,void*) ;

__attribute__((used)) static void decode_ac_filter(WmallDecodeCtx *s)
{
    int i;
    s->acfilter_order = get_bits(&s->gb, 4) + 1;
    s->acfilter_scaling = get_bits(&s->gb, 4);

    for (i = 0; i < s->acfilter_order; i++)
        s->acfilter_coeffs[i] = get_bitsz(&s->gb, s->acfilter_scaling) + 1;
}
