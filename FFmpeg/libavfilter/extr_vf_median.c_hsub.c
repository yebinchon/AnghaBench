
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ htype ;



__attribute__((used)) static void hsub(htype *dst, const htype *src, int bins)
{
    for (int i = 0; i < bins; i++)
        dst[i] -= src[i];
}
