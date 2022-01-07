
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Window ;
typedef int Display ;
typedef int Atom ;


 int DefaultRootWindow (int *) ;
 int False ;
 scalar_t__ Success ;
 int XA_WINDOW ;
 int XFree (unsigned char*) ;
 scalar_t__ XGetWindowProperty (int *,int ,int ,int ,int,int ,int ,int *,int*,unsigned long*,unsigned long*,unsigned char**) ;
 int XInternAtom (int ,char*,int ) ;
 int g_x11_dpy ;
 char* strdup (char*) ;

char *x11_get_wm_name(Display *dpy)
{
   Atom type;
   int format;
   Window window;
   Atom XA_NET_SUPPORTING_WM_CHECK = XInternAtom(g_x11_dpy, "_NET_SUPPORTING_WM_CHECK", False);
   Atom XA_NET_WM_NAME = XInternAtom(g_x11_dpy, "_NET_WM_NAME", False);
   Atom XA_UTF8_STRING = XInternAtom(g_x11_dpy, "UTF8_STRING", False);
   unsigned long nitems = 0;
   unsigned long bytes_after = 0;
   char *title = ((void*)0);
   unsigned char *propdata = ((void*)0);

   if (!XA_NET_SUPPORTING_WM_CHECK || !XA_NET_WM_NAME)
      return ((void*)0);

   if (!(XGetWindowProperty(dpy,
                               DefaultRootWindow(dpy),
                               XA_NET_SUPPORTING_WM_CHECK,
                               0,
                               1,
                               False,
                               XA_WINDOW,
                               &type,
                               &format,
                               &nitems,
                               &bytes_after,
                               &propdata) == Success &&
     propdata))
    return ((void*)0);

   window = ((Window *) propdata)[0];

   XFree(propdata);

   if (!(XGetWindowProperty(dpy,
                               window,
                               XA_NET_WM_NAME,
                               0,
                               8192,
                               False,
                               XA_UTF8_STRING,
                               &type,
                               &format,
                               &nitems,
                               &bytes_after,
                               &propdata) == Success
     && propdata))
    return ((void*)0);

   title = strdup((char *) propdata);
   XFree(propdata);

   return title;
}
