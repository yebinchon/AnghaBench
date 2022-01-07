
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct orient_t {int dummy; } ;
struct TYPE_2__ {struct orient_t orient; } ;


 TYPE_1__* wpaddata ;

void WPAD_Orientation(int chan, struct orient_t *orient)
{

 *orient = wpaddata[chan].orient;
}
