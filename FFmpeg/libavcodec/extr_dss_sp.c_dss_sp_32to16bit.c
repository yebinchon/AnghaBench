
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int av_clip_int16 (int ) ;

__attribute__((used)) static void dss_sp_32to16bit(int16_t *dst, int32_t *src, int size)
{
    int i;

    for (i = 0; i < size; i++)
        dst[i] = av_clip_int16(src[i]);
}
