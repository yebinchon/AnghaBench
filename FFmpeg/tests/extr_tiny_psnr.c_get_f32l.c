
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union av_intfloat32 {int i; float f; } ;
typedef int uint8_t ;



__attribute__((used)) static float get_f32l(uint8_t *p)
{
    union av_intfloat32 v;
    v.i = p[0] | p[1] << 8 | p[2] << 16 | p[3] << 24;
    return v.f;
}
