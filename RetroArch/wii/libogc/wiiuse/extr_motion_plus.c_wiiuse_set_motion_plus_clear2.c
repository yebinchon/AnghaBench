
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uword ;
typedef int ubyte ;
struct wiimote_t {int dummy; } ;


 int WIIMOTE_DISABLE_STATE (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_EXP_FAILED ;
 int WIIMOTE_STATE_EXP_HANDSHAKE ;
 int wiiuse_set_ir_mode (struct wiimote_t*) ;
 int wiiuse_status (struct wiimote_t*,int *) ;

__attribute__((used)) static void wiiuse_set_motion_plus_clear2(struct wiimote_t *wm,ubyte *data,uword len)
{
 WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP);
 WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP_FAILED);
 WIIMOTE_DISABLE_STATE(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
 wiiuse_set_ir_mode(wm);
 wiiuse_status(wm,((void*)0));
}
