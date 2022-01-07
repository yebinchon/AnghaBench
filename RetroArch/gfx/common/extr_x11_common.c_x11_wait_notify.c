
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ window; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ xmap; } ;
typedef TYPE_2__ XEvent ;
typedef int Display ;
typedef int Bool ;


 scalar_t__ MapNotify ;
 scalar_t__ g_x11_win ;

__attribute__((used)) static Bool x11_wait_notify(Display *d, XEvent *e, char *arg)
{
   return e->type == MapNotify && e->xmap.window == g_x11_win;
}
