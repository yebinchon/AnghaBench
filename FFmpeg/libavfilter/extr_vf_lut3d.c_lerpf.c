
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float lerpf(float v0, float v1, float f)
{
    return v0 + (v1 - v0) * f;
}
