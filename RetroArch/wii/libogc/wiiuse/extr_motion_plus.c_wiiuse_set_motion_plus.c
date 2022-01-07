
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ubyte ;
struct wiimote_t {int dummy; } ;


 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP_HANDSHAKE ;
 int WM_EXP_MEM_ENABLE1 ;
 int WM_EXP_MOTION_PLUS_ENABLE ;
 int wiiuse_disable_expansion (struct wiimote_t*) ;
 int wiiuse_motion_plus_check ;
 int wiiuse_set_motion_plus_clear1 ;
 int wiiuse_write_data (struct wiimote_t*,int ,int*,int,int ) ;

void wiiuse_set_motion_plus(struct wiimote_t *wm, int status)
{
 ubyte val;

 if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP_HANDSHAKE))
  return;

 WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
 if(status)
 {
  val = 0x04;
  wiiuse_write_data(wm,WM_EXP_MOTION_PLUS_ENABLE,&val,1,wiiuse_motion_plus_check);
 }
 else
 {
  wiiuse_disable_expansion(wm);
  val = 0x55;
  wiiuse_write_data(wm,WM_EXP_MEM_ENABLE1,&val,1,wiiuse_set_motion_plus_clear1);
 }
}
