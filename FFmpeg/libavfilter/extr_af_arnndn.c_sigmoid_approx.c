
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float tansig_approx (float) ;

__attribute__((used)) static inline float sigmoid_approx(float x)
{
    return .5f + .5f*tansig_approx(.5f*x);
}
