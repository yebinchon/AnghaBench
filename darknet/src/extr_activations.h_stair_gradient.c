
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float floor (float) ;

__attribute__((used)) static inline float stair_gradient(float x)
{
    if (floor(x) == x) return 0;
    return 1;
}
