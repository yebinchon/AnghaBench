
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float M_PI ;
 float sin (float) ;

__attribute__((used)) static float lanczos_kernel(float x)
{
    if (x == 0.0f) {
        return 1.0f;
    } else if (x > -2.0f && x < 2.0f) {
        return (2.0f * sin(M_PI * x) * sin(M_PI / 2.0f * x)) / (M_PI * M_PI * x * x);
    } else {
        return 0.0f;
    }
}
