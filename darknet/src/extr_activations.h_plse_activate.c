
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float plse_activate(float x)
{
    if(x < -4) return .01 * (x + 4);
    if(x > 4) return .01 * (x - 4) + 1;
    return .125*x + .5;
}
