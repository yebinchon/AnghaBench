
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum dwt_type { ____Placeholder_dwt_type } dwt_type ;
struct TYPE_3__ {int horizontal_compose; void* vertical_compose; void* vertical_compose_h0; void* vertical_compose_l0; } ;
typedef TYPE_1__ DWTContext ;


 int AV_CPU_FLAG_MMX ;
 int AV_CPU_FLAG_SSE2 ;
 int AV_CPU_FLAG_SSSE3 ;





 int av_get_cpu_flags () ;
 int horizontal_compose_dd97i_ssse3 ;
 int horizontal_compose_haar0i_mmx ;
 int horizontal_compose_haar0i_sse2 ;
 int horizontal_compose_haar1i_mmx ;
 int horizontal_compose_haar1i_sse2 ;
 scalar_t__ vertical_compose53iL0_mmx ;
 scalar_t__ vertical_compose53iL0_sse2 ;
 scalar_t__ vertical_compose_dd137iL0_mmx ;
 scalar_t__ vertical_compose_dd137iL0_sse2 ;
 scalar_t__ vertical_compose_dd97iH0_mmx ;
 scalar_t__ vertical_compose_dd97iH0_sse2 ;
 scalar_t__ vertical_compose_dirac53iH0_mmx ;
 scalar_t__ vertical_compose_dirac53iH0_sse2 ;
 scalar_t__ vertical_compose_haar_mmx ;
 scalar_t__ vertical_compose_haar_sse2 ;

void ff_spatial_idwt_init_x86(DWTContext *d, enum dwt_type type)
{
}
