
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ wnd; scalar_t__ cmap; int * dpy; int * vi; int * ctx; } ;
typedef TYPE_1__ GLContext ;


 int XCloseDisplay (int *) ;
 int XDestroyWindow (int *,scalar_t__) ;
 int XFree (int *) ;
 int XFreeColormap (int *,scalar_t__) ;
 int glXDestroyContext (int *,int *) ;

void DestroyContext (GLContext* ctx)
{
  if (((void*)0) != ctx->dpy && ((void*)0) != ctx->ctx) glXDestroyContext(ctx->dpy, ctx->ctx);
  if (((void*)0) != ctx->dpy && 0 != ctx->wnd) XDestroyWindow(ctx->dpy, ctx->wnd);
  if (((void*)0) != ctx->dpy && 0 != ctx->cmap) XFreeColormap(ctx->dpy, ctx->cmap);
  if (((void*)0) != ctx->vi) XFree(ctx->vi);
  if (((void*)0) != ctx->dpy) XCloseDisplay(ctx->dpy);
}
