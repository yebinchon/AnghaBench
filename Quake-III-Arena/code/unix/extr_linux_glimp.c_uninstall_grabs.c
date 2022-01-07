
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ value; } ;
struct TYPE_7__ {int vidWidth; int vidHeight; } ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {int (* Printf ) (int ,char*) ;} ;


 int CurrentTime ;
 int DefaultScreen (int ) ;
 int None ;
 int PRINT_ALL ;
 int XChangePointerControl (int ,int ,int ,int ,int ,int ) ;
 int XF86DGADirectVideo (int ,int ,int ) ;
 int XUndefineCursor (int ,int ) ;
 int XUngrabKeyboard (int ,int ) ;
 int XUngrabPointer (int ,int ) ;
 int XWarpPointer (int ,int ,int ,int ,int ,int ,int ,int,int) ;
 TYPE_4__* com_developer ;
 int dpy ;
 TYPE_3__ glConfig ;
 TYPE_2__* in_dgamouse ;
 int mouse_accel_denominator ;
 int mouse_accel_numerator ;
 int mouse_threshold ;
 int qtrue ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;
 int win ;

__attribute__((used)) static void uninstall_grabs(void)
{
  if (in_dgamouse->value)
  {
  if (com_developer->value)
   ri.Printf( PRINT_ALL, "DGA Mouse - Disabling DGA DirectVideo\n" );
    XF86DGADirectVideo(dpy, DefaultScreen(dpy), 0);
  }

  XChangePointerControl(dpy, qtrue, qtrue, mouse_accel_numerator,
                        mouse_accel_denominator, mouse_threshold);

  XUngrabPointer(dpy, CurrentTime);
  XUngrabKeyboard(dpy, CurrentTime);

  XWarpPointer(dpy, None, win,
               0, 0, 0, 0,
               glConfig.vidWidth / 2, glConfig.vidHeight / 2);


  XUndefineCursor(dpy, win);
}
