
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abs (int) ;
 int sqrtf (int ) ;

__attribute__((used)) static inline float on2avc_scale(int v, float scale)
{
    return v * sqrtf(abs(v)) * scale;
}
