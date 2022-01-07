
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XIM ;
typedef int XIC ;
typedef int Window ;
typedef int Display ;


 int RARCH_ERR (char*) ;
 int XCreateIC (int ,int ,int,int ,int ,int *) ;
 int XIMPreeditNothing ;
 int XIMStatusNothing ;
 int XNClientWindow ;
 int XNInputStyle ;
 int XOpenIM (int *,int *,int *,int *) ;
 int XSetICFocus (int ) ;
 int g_x11_has_focus ;
 int x11_destroy_input_context (int *,int *) ;

bool x11_create_input_context(Display *dpy, Window win, XIM *xim, XIC *xic)
{
   x11_destroy_input_context(xim, xic);

   g_x11_has_focus = 1;
   *xim = XOpenIM(dpy, ((void*)0), ((void*)0), ((void*)0));

   if (!*xim)
   {
      RARCH_ERR("[X11]: Failed to open input method.\n");
      return 0;
   }

   *xic = XCreateIC(*xim, XNInputStyle,
         XIMPreeditNothing | XIMStatusNothing, XNClientWindow, win, ((void*)0));

   if (!*xic)
   {
      RARCH_ERR("[X11]: Failed to create input context.\n");
      return 0;
   }

   XSetICFocus(*xic);
   return 1;
}
