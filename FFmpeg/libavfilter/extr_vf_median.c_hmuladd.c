
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htype ;



__attribute__((used)) static void hmuladd(htype *dst, const htype *src, int f, int bins)
{
    for (int i = 0; i < bins; i++)
        dst[i] += f * src[i];
}
