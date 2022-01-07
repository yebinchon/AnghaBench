
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* vres; } ;
struct wiimote_t {TYPE_1__ ir; } ;



void wiiuse_set_ir_vres(struct wiimote_t* wm, unsigned int x, unsigned int y) {
 if (!wm) return;

 wm->ir.vres[0] = (x-1);
 wm->ir.vres[1] = (y-1);
}
