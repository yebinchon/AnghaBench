
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* x; int* y; int* a; int* b; } ;
typedef TYPE_1__ FFBesselFilter ;



__attribute__((used)) static inline float bessel_filter(FFBesselFilter *s, float x)
{
    s->x[2] = s->x[1];
    s->x[1] = s->x[0];
    s->x[0] = x;
    s->y[2] = s->y[1];
    s->y[1] = s->y[0];
    s->y[0] = s->a[0]*s->x[0] + s->a[1]*s->x[1] + s->a[2]*s->x[2] + s->b[0]*s->y[1] + s->b[1]*s->y[2];
    return s->y[0];
}
