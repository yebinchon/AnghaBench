
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int rv40_strong_loop_filter (int *,int const,int,int const,int const,int const,int const) ;

__attribute__((used)) static void rv40_h_strong_loop_filter(uint8_t *src, const ptrdiff_t stride,
                                      const int alpha, const int lims,
                                      const int dmode, const int chroma)
{
    rv40_strong_loop_filter(src, stride, 1, alpha, lims, dmode, chroma);
}
