
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_GetEvent () ;
 int None ;
 scalar_t__ POINTER_WARP_COUNTDOWN ;
 scalar_t__ XPending (int ) ;
 int XWarpPointer (int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int X_display ;
 int X_height ;
 int X_mainWindow ;
 int X_width ;
 scalar_t__ doPointerWarp ;
 scalar_t__ grabMouse ;
 int mousemoved ;

void I_StartTic (void)
{

    if (!X_display)
 return;

    while (XPending(X_display))
 I_GetEvent();




    if (grabMouse)
    {
 if (!--doPointerWarp)
 {
     XWarpPointer( X_display,
     None,
     X_mainWindow,
     0, 0,
     0, 0,
     X_width/2, X_height/2);

     doPointerWarp = POINTER_WARP_COUNTDOWN;
 }
    }

    mousemoved = 0;

}
