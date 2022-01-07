
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freq; int index; } ;
typedef TYPE_1__ supportedRes_struct ;
typedef int Window ;
typedef int Display ;


 int CurrentTime ;
 int RR_Rotate_0 ;
 int RootWindow (int *,int ) ;
 int XCloseDisplay (int *) ;
 int * XOpenDisplay (int *) ;
 int XRRConfigCurrentConfiguration (int *,int *) ;
 int XRRConfigCurrentRate (int *) ;
 int XRRFreeScreenConfigInfo (int *) ;
 int * XRRGetScreenInfo (int *,int ) ;
 int XRRSetScreenConfigAndRate (int *,int *,int ,int ,int ,int ,int ) ;
 int * x11Conf ;
 int x11OriginalRate ;
 int x11OriginalRotation ;
 int x11OriginalSizeId ;

void ScreenChangeResolution(supportedRes_struct * res)
{
   Display *dpy;
   Window root;


   dpy = XOpenDisplay(((void*)0));
   root = RootWindow(dpy, 0);

   if (x11Conf != ((void*)0)) XRRFreeScreenConfigInfo(x11Conf);


   x11Conf = XRRGetScreenInfo(dpy, root);
   x11OriginalRate = XRRConfigCurrentRate(x11Conf);
   x11OriginalSizeId = XRRConfigCurrentConfiguration(x11Conf, &x11OriginalRotation);


   XRRSetScreenConfigAndRate(dpy, x11Conf, root, res->index, RR_Rotate_0, res->freq, CurrentTime);


   XCloseDisplay(dpy);
}
