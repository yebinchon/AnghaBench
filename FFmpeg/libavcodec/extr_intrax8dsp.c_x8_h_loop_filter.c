
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int x8_loop_filter (int *,int ,int,int) ;

__attribute__((used)) static void x8_h_loop_filter(uint8_t *src, ptrdiff_t stride, int qscale)
{
    x8_loop_filter(src, stride, 1, qscale);
}
