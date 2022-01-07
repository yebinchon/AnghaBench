
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vec3w_t {int dummy; } ;
struct TYPE_2__ {struct vec3w_t accel; } ;


 TYPE_1__* wpaddata ;

void WPAD_Accel(int chan, struct vec3w_t *accel)
{

 *accel = wpaddata[chan].accel;
}
