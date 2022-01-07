
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float r0; float r1; float k1; float cor0; float cor1; float var0; float var1; float x_est; } ;
typedef TYPE_1__ PredictorState ;



__attribute__((used)) static inline void reset_predict_state(PredictorState *ps)
{
    ps->r0 = 0.0f;
    ps->r1 = 0.0f;
    ps->k1 = 0.0f;
    ps->cor0 = 0.0f;
    ps->cor1 = 0.0f;
    ps->var0 = 1.0f;
    ps->var1 = 1.0f;
    ps->x_est = 0.0f;
}
