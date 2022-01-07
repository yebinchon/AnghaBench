
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int rv40_weak_loop_filter (int *,int const,int,int const,int const,int const,int const,int const,int const,int const) ;

__attribute__((used)) static void rv40_h_weak_loop_filter(uint8_t *src, const ptrdiff_t stride,
                                    const int filter_p1, const int filter_q1,
                                    const int alpha, const int beta,
                                    const int lim_p0q0, const int lim_q1,
                                    const int lim_p1)
{
    rv40_weak_loop_filter(src, stride, 1, filter_p1, filter_q1,
                          alpha, beta, lim_p0q0, lim_q1, lim_p1);
}
