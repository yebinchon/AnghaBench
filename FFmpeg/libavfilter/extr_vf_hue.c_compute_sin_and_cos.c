
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saturation; int hue; void* hue_cos; void* hue_sin; } ;
typedef TYPE_1__ HueContext ;


 int cos (int ) ;
 void* lrint (int) ;
 int sin (int ) ;

__attribute__((used)) static inline void compute_sin_and_cos(HueContext *hue)
{





    hue->hue_sin = lrint(sin(hue->hue) * (1 << 16) * hue->saturation);
    hue->hue_cos = lrint(cos(hue->hue) * (1 << 16) * hue->saturation);
}
