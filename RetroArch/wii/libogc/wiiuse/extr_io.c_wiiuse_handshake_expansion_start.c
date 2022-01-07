
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {scalar_t__ expansion_state; } ;


 int WIIMOTE_ENABLE_STATE (struct wiimote_t*,int ) ;
 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_EXP ;
 int WIIMOTE_STATE_EXP_FAILED ;
 int WIIMOTE_STATE_EXP_HANDSHAKE ;
 int wiiuse_handshake_expansion (struct wiimote_t*,int *,int ) ;

void wiiuse_handshake_expansion_start(struct wiimote_t *wm)
{
 if(WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP) || WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP_FAILED) || WIIMOTE_IS_SET(wm,WIIMOTE_STATE_EXP_HANDSHAKE))
  return;

 wm->expansion_state = 0;
 WIIMOTE_ENABLE_STATE(wm, WIIMOTE_STATE_EXP_HANDSHAKE);
 wiiuse_handshake_expansion(wm, ((void*)0), 0);
}
