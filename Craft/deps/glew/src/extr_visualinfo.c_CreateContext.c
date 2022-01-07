
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int colormap; scalar_t__ border_pixel; } ;
typedef TYPE_1__ XSetWindowAttributes ;
struct TYPE_9__ {int visual; int depth; int screen; } ;
struct TYPE_8__ {int * ctx; int wnd; int * dpy; TYPE_3__* vi; int cmap; } ;
typedef int GLboolean ;
typedef TYPE_2__ GLContext ;


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
 int * XOpenDisplay (int ) ;
 int display ;
 TYPE_3__* glXChooseVisual (int *,int ,int*) ;
 int * glXCreateContext (int *,TYPE_3__*,int,int ) ;
 int glXMakeCurrent (int *,int ,int *) ;
 int glXQueryExtension (int *,int*,int*) ;

GLboolean CreateContext (GLContext* ctx)
{
  int attrib[] = { GLX_RGBA, GLX_DOUBLEBUFFER, None };
  int erb, evb;
  XSetWindowAttributes swa;

  if (((void*)0) == ctx) return GL_TRUE;

  ctx->dpy = XOpenDisplay(display);
  if (((void*)0) == ctx->dpy) return GL_TRUE;

  if (!glXQueryExtension(ctx->dpy, &erb, &evb)) return GL_TRUE;

  ctx->vi = glXChooseVisual(ctx->dpy, DefaultScreen(ctx->dpy), attrib);
  if (((void*)0) == ctx->vi) return GL_TRUE;

  ctx->ctx = glXCreateContext(ctx->dpy, ctx->vi, None, True);
  if (((void*)0) == ctx->ctx) return GL_TRUE;


  ctx->cmap = XCreateColormap(ctx->dpy, RootWindow(ctx->dpy, ctx->vi->screen),
                              ctx->vi->visual, AllocNone);
  swa.border_pixel = 0;
  swa.colormap = ctx->cmap;
  ctx->wnd = XCreateWindow(ctx->dpy, RootWindow(ctx->dpy, ctx->vi->screen),
                           0, 0, 1, 1, 0, ctx->vi->depth, InputOutput, ctx->vi->visual,
                           CWBorderPixel | CWColormap, &swa);

  if (!glXMakeCurrent(ctx->dpy, ctx->wnd, ctx->ctx)) return GL_TRUE;
  return GL_FALSE;
}
