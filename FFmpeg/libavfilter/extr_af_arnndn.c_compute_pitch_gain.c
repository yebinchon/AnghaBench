
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float sqrtf (float) ;

__attribute__((used)) static float compute_pitch_gain(float xy, float xx, float yy)
{
    return xy / sqrtf(1.f + xx * yy);
}
