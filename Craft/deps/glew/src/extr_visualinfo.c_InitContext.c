
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmap; scalar_t__ wnd; int * ctx; int * vi; int * dpy; } ;
typedef TYPE_1__ GLContext ;



void InitContext (GLContext* ctx)
{
  ctx->dpy = ((void*)0);
  ctx->vi = ((void*)0);
  ctx->ctx = ((void*)0);
  ctx->wnd = 0;
  ctx->cmap = 0;
}
