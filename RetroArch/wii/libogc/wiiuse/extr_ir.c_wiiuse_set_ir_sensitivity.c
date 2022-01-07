
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int unid; } ;


 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int) ;
 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int) ;
 int WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_IR ;
 int WIIMOTE_STATE_IR_SENS_LVL1 ;
 int WIIMOTE_STATE_IR_SENS_LVL2 ;
 int WIIMOTE_STATE_IR_SENS_LVL3 ;
 int WIIMOTE_STATE_IR_SENS_LVL4 ;
 int WIIMOTE_STATE_IR_SENS_LVL5 ;
 int WIIUSE_DEBUG (char*,int,int ) ;
 int WM_REG_IR_BLOCK1 ;
 int WM_REG_IR_BLOCK2 ;
 int get_ir_sens (struct wiimote_t*,char**,char**) ;
 int wiiuse_write_data (struct wiimote_t*,int ,int *,int,int *) ;

void wiiuse_set_ir_sensitivity(struct wiimote_t* wm, int level) {
 char* block1 = ((void*)0);
 char* block2 = ((void*)0);

 if (!wm) return;

 if (level > 5) level = 5;
 if (level < 1) level = 1;

 WIIMOTE_DISABLE_STATE(wm, (WIIMOTE_STATE_IR_SENS_LVL1 |
        WIIMOTE_STATE_IR_SENS_LVL2 |
        WIIMOTE_STATE_IR_SENS_LVL3 |
        WIIMOTE_STATE_IR_SENS_LVL4 |
        WIIMOTE_STATE_IR_SENS_LVL5));

 switch (level) {
  case 1:
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_IR_SENS_LVL1);
   break;
  case 2:
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_IR_SENS_LVL2);
   break;
  case 3:
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_IR_SENS_LVL3);
   break;
  case 4:
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_IR_SENS_LVL4);
   break;
  case 5:
   WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_IR_SENS_LVL5);
   break;
  default:
   return;
 }

 if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_IR)) return;


 get_ir_sens(wm, &block1, &block2);

 wiiuse_write_data(wm, WM_REG_IR_BLOCK1, (ubyte*)block1, 9,((void*)0));
 wiiuse_write_data(wm, WM_REG_IR_BLOCK2, (ubyte*)block2, 2,((void*)0));

 WIIUSE_DEBUG("Set IR sensitivity to level %i (unid %i)", level, wm->unid);
}
