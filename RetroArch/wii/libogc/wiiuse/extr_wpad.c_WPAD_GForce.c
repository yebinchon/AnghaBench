
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gforce_t {int dummy; } ;
struct TYPE_2__ {struct gforce_t gforce; } ;


 TYPE_1__* wpaddata ;

void WPAD_GForce(int chan, struct gforce_t *gforce)
{

 *gforce = wpaddata[chan].gforce;
}
