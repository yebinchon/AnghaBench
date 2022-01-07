
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int dummy; } ;


 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_IR ;
 int WM_IR_TYPE_BASIC ;
 int WM_IR_TYPE_EXTENDED ;
 int WM_REG_IR_MODENUM ;
 int wiiuse_write_data (struct wiimote_t*,int ,int*,int,int *) ;

void wiiuse_set_ir_mode(struct wiimote_t *wm)
{
 ubyte buf = 0x00;

 if(!wm) return;
 if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_IR)) return;

 if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP)) buf = WM_IR_TYPE_BASIC;
 else buf = WM_IR_TYPE_EXTENDED;
 wiiuse_write_data(wm,WM_REG_IR_MODENUM, &buf, 1, ((void*)0));
}
