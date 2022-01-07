
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int vidWidth; int vidHeight; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int (* Cvar_Set ) (char*,char*) ;int (* Printf ) (int ,char*) ;} ;


 int CreateNullCursor (int ,int ) ;
 int CurrentTime ;
 int DefaultScreen (int ) ;
 int False ;
 int GrabModeAsync ;
 int MOUSE_MASK ;
 int None ;
 int PRINT_ALL ;
 int Sys_Milliseconds () ;
 int True ;
 int XChangePointerControl (int ,int ,int ,int,int,int ) ;
 int XDefineCursor (int ,int ,int ) ;
 int XF86DGADirectMouse ;
 int XF86DGADirectVideo (int ,int ,int ) ;
 int XF86DGAQueryVersion (int ,int*,int*) ;
 int XGetPointerControl (int ,int *,int *,int *) ;
 int XGrabKeyboard (int ,int ,int ,int ,int ,int ) ;
 int XGrabPointer (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int XSync (int ,int ) ;
 int XWarpPointer (int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int dpy ;
 TYPE_3__ glConfig ;
 TYPE_2__* in_dgamouse ;
 int mouseResetTime ;
 int mouse_accel_denominator ;
 int mouse_accel_numerator ;
 int mouse_threshold ;
 int mwx ;
 int mwy ;
 scalar_t__ mx ;
 scalar_t__ my ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;
 int stub2 (char*,char*) ;
 int win ;

__attribute__((used)) static void install_grabs(void)
{

  XWarpPointer(dpy, None, win,
               0, 0, 0, 0,
               glConfig.vidWidth / 2, glConfig.vidHeight / 2);
  XSync(dpy, False);

  XDefineCursor(dpy, win, CreateNullCursor(dpy, win));

  XGrabPointer(dpy, win,
               False,
               MOUSE_MASK,
               GrabModeAsync, GrabModeAsync,
               win,
               None,
               CurrentTime);

  XGetPointerControl(dpy, &mouse_accel_numerator, &mouse_accel_denominator,
                     &mouse_threshold);

  XChangePointerControl(dpy, True, True, 1, 1, 0);

  XSync(dpy, False);

  mouseResetTime = Sys_Milliseconds ();

  if (in_dgamouse->value)
  {
    int MajorVersion, MinorVersion;

    if (!XF86DGAQueryVersion(dpy, &MajorVersion, &MinorVersion))
    {

      ri.Printf( PRINT_ALL, "Failed to detect XF86DGA Mouse\n" );
      ri.Cvar_Set( "in_dgamouse", "0" );
    } else
    {
      XF86DGADirectVideo(dpy, DefaultScreen(dpy), XF86DGADirectMouse);
      XWarpPointer(dpy, None, win, 0, 0, 0, 0, 0, 0);
    }
  } else
  {
    mwx = glConfig.vidWidth / 2;
    mwy = glConfig.vidHeight / 2;
    mx = my = 0;
  }

  XGrabKeyboard(dpy, win,
                False,
                GrabModeAsync, GrabModeAsync,
                CurrentTime);

  XSync(dpy, False);
}
