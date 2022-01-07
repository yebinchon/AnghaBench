
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** put_signed_rect_clamped; int * dequant_subband; int ** avg_dirac_pixels_tab; int ** put_dirac_pixels_tab; int * add_dirac_obmc; int add_rect_clamped; int dirac_hpel_filter; } ;
typedef TYPE_1__ DiracDSPContext ;


 scalar_t__ EXTERNAL_MMX (int) ;
 scalar_t__ EXTERNAL_MMXEXT (int) ;
 scalar_t__ EXTERNAL_SSE2 (int) ;
 scalar_t__ EXTERNAL_SSE4 (int) ;
 int PIXFUNC (int ,int ,int ) ;
 int av_get_cpu_flags () ;
 int avg ;
 int dirac_hpel_filter_mmx ;
 int dirac_hpel_filter_sse2 ;
 int ff_add_dirac_obmc16_mmx ;
 int ff_add_dirac_obmc16_sse2 ;
 int ff_add_dirac_obmc32_mmx ;
 int ff_add_dirac_obmc32_sse2 ;
 int ff_add_dirac_obmc8_mmx ;
 int ff_add_rect_clamped_mmx ;
 int ff_add_rect_clamped_sse2 ;
 int ff_avg_dirac_pixels16_sse2 ;
 int ff_avg_dirac_pixels32_sse2 ;
 int ff_dequant_subband_32_sse4 ;
 int ff_put_dirac_pixels16_sse2 ;
 int ff_put_dirac_pixels32_sse2 ;
 void* ff_put_signed_rect_clamped_10_sse4 ;
 scalar_t__ ff_put_signed_rect_clamped_mmx ;
 scalar_t__ ff_put_signed_rect_clamped_sse2 ;
 int mmx ;
 int mmxext ;
 int put ;

void ff_diracdsp_init_x86(DiracDSPContext* c)
{
    int mm_flags = av_get_cpu_flags();

    if (EXTERNAL_MMX(mm_flags)) {
        c->add_dirac_obmc[0] = ff_add_dirac_obmc8_mmx;

        c->add_dirac_obmc[1] = ff_add_dirac_obmc16_mmx;
        c->add_dirac_obmc[2] = ff_add_dirac_obmc32_mmx;
        c->dirac_hpel_filter = dirac_hpel_filter_mmx;
        c->add_rect_clamped = ff_add_rect_clamped_mmx;
        c->put_signed_rect_clamped[0] = (void *)ff_put_signed_rect_clamped_mmx;

        PIXFUNC(put, 0, mmx);
        PIXFUNC(avg, 0, mmx);
    }

    if (EXTERNAL_MMXEXT(mm_flags)) {
        PIXFUNC(avg, 0, mmxext);
    }

    if (EXTERNAL_SSE2(mm_flags)) {
        c->dirac_hpel_filter = dirac_hpel_filter_sse2;
        c->add_rect_clamped = ff_add_rect_clamped_sse2;
        c->put_signed_rect_clamped[0] = (void *)ff_put_signed_rect_clamped_sse2;

        c->add_dirac_obmc[1] = ff_add_dirac_obmc16_sse2;
        c->add_dirac_obmc[2] = ff_add_dirac_obmc32_sse2;

        c->put_dirac_pixels_tab[1][0] = ff_put_dirac_pixels16_sse2;
        c->avg_dirac_pixels_tab[1][0] = ff_avg_dirac_pixels16_sse2;
        c->put_dirac_pixels_tab[2][0] = ff_put_dirac_pixels32_sse2;
        c->avg_dirac_pixels_tab[2][0] = ff_avg_dirac_pixels32_sse2;
    }

    if (EXTERNAL_SSE4(mm_flags)) {
        c->dequant_subband[1] = ff_dequant_subband_32_sse4;
        c->put_signed_rect_clamped[1] = ff_put_signed_rect_clamped_10_sse4;
    }
}
