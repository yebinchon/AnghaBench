
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {int dummy; } ;


 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_ACC ;
 int WIIMOTE_STATE_HANDSHAKE_COMPLETE ;
 int wiiuse_status (struct wiimote_t*,int *) ;

void wiiuse_motion_sensing(struct wiimote_t* wm, int status)
{
 if (status) {
  if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_ACC)) return;
  WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_ACC);
 } else {
  if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_ACC)) return;
  WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_ACC);
 }

 if(!WIIMOTE_IS_SET(wm,WIIMOTE_STATE_HANDSHAKE_COMPLETE)) return;

 wiiuse_status(wm,((void*)0));
}
