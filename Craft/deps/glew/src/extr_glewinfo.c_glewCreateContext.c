
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int colormap; scalar_t__ border_pixel; } ;
typedef TYPE_1__ XSetWindowAttributes ;
struct TYPE_9__ {int visual; int depth; int screen; } ;
typedef int GLboolean ;


 int AllocNone ;
 int CWBorderPixel ;
 int CWColormap ;
 int DefaultScreen (int *) ;
 int GLX_DOUBLEBUFFER ;
 int GLX_RGBA ;
 int GL_FALSE ;
 int GL_TRUE ;
 int InputOutput ;
 int None ;
 int RootWindow (int *,int ) ;
 int True ;
 int XCreateColormap (int *,int ,int ,int ) ;
 int XCreateWindow (int *,int ,int ,int ,int,int,int ,int ,int ,int ,int,TYPE_1__*) ;
 TYPE_2__* XGetVisualInfo (int *,int ,int *,int*) ;
 int * XOpenDisplay (char const*) ;
 scalar_t__ XVisualIDFromVisual (int ) ;
 int cmap ;
 int * ctx ;
 int * dpy ;
 TYPE_2__* glXChooseVisual (int *,int ,int*) ;
 int * glXCreateContext (int *,TYPE_2__*,int,int ) ;
 int glXMakeCurrent (int *,int ,int *) ;
 int glXQueryExtension (int *,int*,int*) ;
 TYPE_2__* vi ;
 TYPE_2__* vis ;
 int wnd ;

GLboolean glewCreateContext (const char* display, int* visual)
{
  int attrib[] = { GLX_RGBA, GLX_DOUBLEBUFFER, None };
  int erb, evb;
  XSetWindowAttributes swa;

  dpy = XOpenDisplay(display);
  if (((void*)0) == dpy) return GL_TRUE;

  if (!glXQueryExtension(dpy, &erb, &evb)) return GL_TRUE;

  if (*visual == -1)
  {
    vi = glXChooseVisual(dpy, DefaultScreen(dpy), attrib);
    if (((void*)0) == vi) return GL_TRUE;
    *visual = (int)XVisualIDFromVisual(vi->visual);
  }
  else
  {
    int n_vis, i;
    vis = XGetVisualInfo(dpy, 0, ((void*)0), &n_vis);
    for (i=0; i<n_vis; i++)
    {
      if ((int)XVisualIDFromVisual(vis[i].visual) == *visual)
        vi = &vis[i];
    }
    if (vi == ((void*)0)) return GL_TRUE;
  }

  ctx = glXCreateContext(dpy, vi, None, True);
  if (((void*)0) == ctx) return GL_TRUE;


  cmap = XCreateColormap(dpy, RootWindow(dpy, vi->screen), vi->visual, AllocNone);
  swa.border_pixel = 0;
  swa.colormap = cmap;
  wnd = XCreateWindow(dpy, RootWindow(dpy, vi->screen),
                      0, 0, 1, 1, 0, vi->depth, InputOutput, vi->visual,
                      CWBorderPixel | CWColormap, &swa);

  if (!glXMakeCurrent(dpy, wnd, ctx)) return GL_TRUE;
  return GL_FALSE;
}
