
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {int dummy; } ;


 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_IR_SENS_LVL1 ;
 int WIIMOTE_STATE_IR_SENS_LVL2 ;
 int WIIMOTE_STATE_IR_SENS_LVL3 ;
 int WIIMOTE_STATE_IR_SENS_LVL4 ;
 int WIIMOTE_STATE_IR_SENS_LVL5 ;
 char* WM_IR_BLOCK1_LEVEL1 ;
 char* WM_IR_BLOCK1_LEVEL2 ;
 char* WM_IR_BLOCK1_LEVEL3 ;
 char* WM_IR_BLOCK1_LEVEL4 ;
 char* WM_IR_BLOCK1_LEVEL5 ;
 char* WM_IR_BLOCK2_LEVEL1 ;
 char* WM_IR_BLOCK2_LEVEL2 ;
 char* WM_IR_BLOCK2_LEVEL3 ;
 char* WM_IR_BLOCK2_LEVEL4 ;
 char* WM_IR_BLOCK2_LEVEL5 ;

__attribute__((used)) static int get_ir_sens(struct wiimote_t* wm, char** block1, char** block2) {
 if (WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR_SENS_LVL1)) {
  *block1 = WM_IR_BLOCK1_LEVEL1;
  *block2 = WM_IR_BLOCK2_LEVEL1;
  return 1;
 } else if (WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR_SENS_LVL2)) {
  *block1 = WM_IR_BLOCK1_LEVEL2;
  *block2 = WM_IR_BLOCK2_LEVEL2;
  return 2;
 } else if (WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR_SENS_LVL3)) {
  *block1 = WM_IR_BLOCK1_LEVEL3;
  *block2 = WM_IR_BLOCK2_LEVEL3;
  return 3;
 } else if (WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR_SENS_LVL4)) {
  *block1 = WM_IR_BLOCK1_LEVEL4;
  *block2 = WM_IR_BLOCK2_LEVEL4;
  return 4;
 } else if (WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR_SENS_LVL5)) {
  *block1 = WM_IR_BLOCK1_LEVEL5;
  *block2 = WM_IR_BLOCK2_LEVEL5;
  return 5;
 }

 *block1 = ((void*)0);
 *block2 = ((void*)0);
 return 0;
}
