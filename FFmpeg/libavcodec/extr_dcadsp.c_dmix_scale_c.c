
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef int int32_t ;


 int mul15 (int ,int) ;

__attribute__((used)) static void dmix_scale_c(int32_t *dst, int scale, ptrdiff_t len)
{
    int i;

    for (i = 0; i < len; i++)
        dst[i] = mul15(dst[i], scale);
}
