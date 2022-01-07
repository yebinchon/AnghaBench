
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** avg_pixels_tab; void*** put_pixels_tab; void*** put_no_rnd_pixels_tab; } ;
typedef TYPE_1__ HpelDSPContext ;


 int ff_avg_pixels16_sse2 ;
 int ff_avg_pixels16_x2_sse2 ;
 int ff_avg_pixels16_xy2_sse2 ;
 int ff_avg_pixels16_y2_sse2 ;
 void* ff_put_pixels16_sse2 ;
 void* ff_put_pixels16_x2_sse2 ;
 void* ff_put_pixels16_xy2_sse2 ;
 void* ff_put_pixels16_y2_sse2 ;

__attribute__((used)) static void hpeldsp_init_sse2_fast(HpelDSPContext *c, int flags)
{
}
