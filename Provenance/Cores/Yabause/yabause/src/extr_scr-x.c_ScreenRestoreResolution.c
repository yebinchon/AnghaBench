
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;
typedef int Display ;


 int CurrentTime ;
 int RootWindow (int *,int ) ;
 int XCloseDisplay (int *) ;
 int * XOpenDisplay (int *) ;
 int XRRSetScreenConfigAndRate (int *,int *,int ,int ,int ,int ,int ) ;
 int * x11Conf ;
 int x11OriginalRate ;
 int x11OriginalRotation ;
 int x11OriginalSizeId ;

void ScreenRestoreResolution()
{
   Display *dpy;
   Window root;

   if (x11Conf == ((void*)0)) return;


   dpy = XOpenDisplay(((void*)0));
   root = RootWindow(dpy, 0);
   XRRSetScreenConfigAndRate(dpy, x11Conf, root, x11OriginalSizeId, x11OriginalRotation, x11OriginalRate, CurrentTime);


   XCloseDisplay(dpy);
}
