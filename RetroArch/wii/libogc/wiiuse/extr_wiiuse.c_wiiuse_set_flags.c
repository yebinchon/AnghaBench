
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiimote_t {int flags; } ;



int wiiuse_set_flags(struct wiimote_t* wm, int enable, int disable) {
 if (!wm) return 0;


 enable &= ~disable;
 disable &= ~enable;

 wm->flags |= enable;
 wm->flags &= ~disable;

 return wm->flags;
}
