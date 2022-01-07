
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int rv40_loop_filter_strength (int *,int ,int,int,int,int,int*,int*) ;

__attribute__((used)) static int rv40_h_loop_filter_strength(uint8_t *src, ptrdiff_t stride,
                                       int beta, int beta2, int edge,
                                       int *p1, int *q1)
{
    return rv40_loop_filter_strength(src, stride, 1, beta, beta2, edge, p1, q1);
}
