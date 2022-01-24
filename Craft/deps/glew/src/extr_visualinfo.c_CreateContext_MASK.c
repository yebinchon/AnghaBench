#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  colormap; scalar_t__ border_pixel; } ;
typedef  TYPE_1__ XSetWindowAttributes ;
struct TYPE_9__ {int /*<<< orphan*/  visual; int /*<<< orphan*/  depth; int /*<<< orphan*/  screen; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ctx; int /*<<< orphan*/  wnd; int /*<<< orphan*/ * dpy; TYPE_3__* vi; int /*<<< orphan*/  cmap; } ;
typedef  int /*<<< orphan*/  GLboolean ;
typedef  TYPE_2__ GLContext ;

/* Variables and functions */
 int /*<<< orphan*/  AllocNone ; 
 int CWBorderPixel ; 
 int CWColormap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GLX_DOUBLEBUFFER ; 
 int GLX_RGBA ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  InputOutput ; 
 int None ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  display ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int*) ; 

GLboolean FUNC9 (GLContext* ctx)
{
  int attrib[] = { GLX_RGBA, GLX_DOUBLEBUFFER, None };
  int erb, evb;
  XSetWindowAttributes swa;
  /* check input */
  if (NULL == ctx) return GL_TRUE;
  /* open display */
  ctx->dpy = FUNC4(display);
  if (NULL == ctx->dpy) return GL_TRUE;
  /* query for glx */
  if (!FUNC8(ctx->dpy, &erb, &evb)) return GL_TRUE;
  /* choose visual */
  ctx->vi = FUNC5(ctx->dpy, FUNC0(ctx->dpy), attrib);
  if (NULL == ctx->vi) return GL_TRUE;
  /* create context */
  ctx->ctx = FUNC6(ctx->dpy, ctx->vi, None, True);
  if (NULL == ctx->ctx) return GL_TRUE;
  /* create window */
  /*wnd = XCreateSimpleWindow(dpy, RootWindow(dpy, vi->screen), 0, 0, 1, 1, 1, 0, 0);*/
  ctx->cmap = FUNC2(ctx->dpy, FUNC1(ctx->dpy, ctx->vi->screen),
                              ctx->vi->visual, AllocNone);
  swa.border_pixel = 0;
  swa.colormap = ctx->cmap;
  ctx->wnd = FUNC3(ctx->dpy, FUNC1(ctx->dpy, ctx->vi->screen), 
                           0, 0, 1, 1, 0, ctx->vi->depth, InputOutput, ctx->vi->visual, 
                           CWBorderPixel | CWColormap, &swa);
  /* make context current */
  if (!FUNC7(ctx->dpy, ctx->wnd, ctx->ctx)) return GL_TRUE;
  return GL_FALSE;
}