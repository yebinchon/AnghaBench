
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int const ptrdiff_t ;
struct TYPE_3__ {int (* compute_safe_ssd_integral_image ) (int *,int const,int const*,int const,int const*,int const,int const,int const) ;} ;
typedef TYPE_1__ NLMeansDSPContext ;


 int FFMAX (int const,int const) ;
 int FFMIN (int const,int const) ;
 int av_assert1 (int) ;
 int compute_unsafe_ssd_integral_image (int *,int const,int const,int const,int const*,int const,int,int,int,int,int,int const,int const) ;
 int stub1 (int *,int const,int const*,int const,int const*,int const,int const,int const) ;

__attribute__((used)) static void compute_ssd_integral_image(const NLMeansDSPContext *dsp,
                                       uint32_t *ii, ptrdiff_t ii_linesize_32,
                                       const uint8_t *src, ptrdiff_t linesize, int offx, int offy,
                                       int e, int w, int h)
{

    const int ii_w = w + e*2;
    const int ii_h = h + e*2;


    const int s1x = e;
    const int s1y = e;


    const int s2x = e + offx;
    const int s2y = e + offy;



    const int startx_safe = FFMAX(s1x, s2x);
    const int starty_safe = FFMAX(s1y, s2y);
    const int u_endx_safe = FFMIN(s1x + w, s2x + w);
    const int endy_safe = FFMIN(s1y + h, s2y + h);


    const int safe_pw = (u_endx_safe - startx_safe) & ~0xf;
    const int safe_ph = endy_safe - starty_safe;


    const int endx_safe = startx_safe + safe_pw;


    compute_unsafe_ssd_integral_image(ii, ii_linesize_32,
                                      0, 0,
                                      src, linesize,
                                      offx, offy, e, w, h,
                                      ii_w, starty_safe);



    compute_unsafe_ssd_integral_image(ii, ii_linesize_32,
                                      0, starty_safe,
                                      src, linesize,
                                      offx, offy, e, w, h,
                                      startx_safe, safe_ph);


    av_assert1(startx_safe - s1x >= 0); av_assert1(startx_safe - s1x < w);
    av_assert1(starty_safe - s1y >= 0); av_assert1(starty_safe - s1y < h);
    av_assert1(startx_safe - s2x >= 0); av_assert1(startx_safe - s2x < w);
    av_assert1(starty_safe - s2y >= 0); av_assert1(starty_safe - s2y < h);
    if (safe_pw && safe_ph)
        dsp->compute_safe_ssd_integral_image(ii + starty_safe*ii_linesize_32 + startx_safe, ii_linesize_32,
                                             src + (starty_safe - s1y) * linesize + (startx_safe - s1x), linesize,
                                             src + (starty_safe - s2y) * linesize + (startx_safe - s2x), linesize,
                                             safe_pw, safe_ph);


    compute_unsafe_ssd_integral_image(ii, ii_linesize_32,
                                      endx_safe, starty_safe,
                                      src, linesize,
                                      offx, offy, e, w, h,
                                      ii_w - endx_safe, safe_ph);


    compute_unsafe_ssd_integral_image(ii, ii_linesize_32,
                                      0, endy_safe,
                                      src, linesize,
                                      offx, offy, e, w, h,
                                      ii_w, ii_h - endy_safe);
}
