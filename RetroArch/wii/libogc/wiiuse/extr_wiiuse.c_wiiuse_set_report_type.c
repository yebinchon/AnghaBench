
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int dummy; } ;
typedef int cmd_blk_cb ;


 int WIIMOTE_IS_CONNECTED (struct wiimote_t*) ;
 scalar_t__ WIIMOTE_IS_FLAG_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_ACC ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_IR ;
 int WIIUSE_CONTINUOUS ;
 int WM_CMD_REPORT_TYPE ;
 int WM_RPT_BTN ;
 int WM_RPT_BTN_ACC ;
 int WM_RPT_BTN_ACC_EXP ;
 int WM_RPT_BTN_ACC_IR ;
 int WM_RPT_BTN_ACC_IR_EXP ;
 int WM_RPT_BTN_EXP ;
 int WM_RPT_BTN_IR_EXP ;
 int wiiuse_sendcmd (struct wiimote_t*,int ,int*,int,int ) ;

int wiiuse_set_report_type(struct wiimote_t *wm,cmd_blk_cb cb)
{
 ubyte buf[2];
 int motion,ir,exp;

 if(!wm || !WIIMOTE_IS_CONNECTED(wm)) return 0;

 buf[0] = (WIIMOTE_IS_FLAG_SET(wm, WIIUSE_CONTINUOUS) ? 0x04 : 0x00);
 buf[1] = 0x00;

 motion = WIIMOTE_IS_SET(wm, WIIMOTE_STATE_ACC) || WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR);
 exp = WIIMOTE_IS_SET(wm, WIIMOTE_STATE_EXP);
 ir = WIIMOTE_IS_SET(wm, WIIMOTE_STATE_IR);

 if (motion && ir && exp) buf[1] = WM_RPT_BTN_ACC_IR_EXP;
 else if (motion && exp) buf[1] = WM_RPT_BTN_ACC_EXP;
 else if (motion && ir) buf[1] = WM_RPT_BTN_ACC_IR;
 else if (ir && exp) buf[1] = WM_RPT_BTN_IR_EXP;
 else if (ir) buf[1] = WM_RPT_BTN_ACC_IR;
 else if (exp) buf[1] = WM_RPT_BTN_EXP;
 else if (motion) buf[1] = WM_RPT_BTN_ACC;
 else buf[1] = WM_RPT_BTN;



 wiiuse_sendcmd(wm,WM_CMD_REPORT_TYPE,buf,2,cb);
 return buf[1];
}
