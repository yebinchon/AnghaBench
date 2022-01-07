
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uword ;
typedef int ubyte ;
typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct wiimote_t {TYPE_1__ exp; int event; int motion_plus_id; } ;


 int EXP_ID_CODE_MOTION_PLUS ;
 int EXP_MOTION_PLUS ;
 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_EXP_FAILED ;
 int WIIMOTE_STATE_EXP_HANDSHAKE ;
 int WIIUSE_MOTION_PLUS_ACTIVATED ;
 int WM_EXP_ID ;
 int wiiuse_read_data (struct wiimote_t*,int ,int ,int,void (*) (struct wiimote_t*,int*,int )) ;
 int wiiuse_set_ir_mode (struct wiimote_t*) ;

void wiiuse_motion_plus_check(struct wiimote_t *wm,ubyte *data,uword len)
{
 u32 val;
 if(data == ((void*)0))
 {
  wiiuse_read_data(wm, wm->motion_plus_id, WM_EXP_ID, 6, wiiuse_motion_plus_check);
 }
 else
 {
  WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP);
  WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP_FAILED);
  WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
  val = (data[3] << 16) | (data[2] << 24) | (data[4] << 8) | data[5];
  if(val == EXP_ID_CODE_MOTION_PLUS)
  {

   wm->event = WIIUSE_MOTION_PLUS_ACTIVATED;
   wm->exp.type = EXP_MOTION_PLUS;

   WIIMOTE_ENABLE_STATE(wm,WIIMOTE_STATE_EXP);
   wiiuse_set_ir_mode(wm);
  }
 }
}
