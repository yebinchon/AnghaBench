
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ir_t {int dummy; } ;
struct TYPE_2__ {struct ir_t ir; } ;


 TYPE_1__* wpaddata ;

void WPAD_IR(int chan, struct ir_t *ir)
{

 *ir = wpaddata[chan].ir;
}
