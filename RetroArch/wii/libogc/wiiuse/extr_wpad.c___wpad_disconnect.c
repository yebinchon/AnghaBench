
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {int dummy; } ;
struct _wpad_cb {struct wiimote_t* wm; } ;
typedef int s32 ;


 scalar_t__ WIIMOTE_IS_SET (struct wiimote_t*,int ) ;
 int WIIMOTE_STATE_CONNECTED ;
 int wiiuse_disconnect (struct wiimote_t*) ;

__attribute__((used)) static s32 __wpad_disconnect(struct _wpad_cb *wpdcb)
{
 struct wiimote_t *wm;

 if(wpdcb==((void*)0)) return 0;

 wm = wpdcb->wm;
 if(wm && WIIMOTE_IS_SET(wm,WIIMOTE_STATE_CONNECTED)) {
  wiiuse_disconnect(wm);
 }

 return 0;
}
