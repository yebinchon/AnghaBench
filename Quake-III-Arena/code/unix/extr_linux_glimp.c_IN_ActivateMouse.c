
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int value; } ;
struct TYPE_4__ {int (* Cvar_Set ) (char*,char*) ;} ;


 int dpy ;
 TYPE_3__* in_dgamouse ;
 TYPE_2__* in_nograb ;
 int install_grabs () ;
 scalar_t__ mouse_active ;
 int mouse_avail ;
 scalar_t__ qtrue ;
 TYPE_1__ ri ;
 int stub1 (char*,char*) ;
 int win ;

void IN_ActivateMouse( void )
{
  if (!mouse_avail || !dpy || !win)
    return;

  if (!mouse_active)
  {
  if (!in_nograb->value)
      install_grabs();
  else if (in_dgamouse->value)
   ri.Cvar_Set("in_dgamouse", "0");
    mouse_active = qtrue;
  }
}
