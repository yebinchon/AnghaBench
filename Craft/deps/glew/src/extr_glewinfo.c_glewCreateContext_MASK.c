#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  colormap; scalar_t__ border_pixel; } ;
typedef  TYPE_1__ XSetWindowAttributes ;
struct TYPE_9__ {int /*<<< orphan*/  visual; int /*<<< orphan*/  depth; int /*<<< orphan*/  screen; } ;
typedef  int /*<<< orphan*/  GLboolean ;

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
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmap ; 
 int /*<<< orphan*/ * ctx ; 
 int /*<<< orphan*/ * dpy ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int*) ; 
 TYPE_2__* vi ; 
 TYPE_2__* vis ; 
 int /*<<< orphan*/  wnd ; 

GLboolean FUNC11 (const char* display, int* visual)
{
  int attrib[] = { GLX_RGBA, GLX_DOUBLEBUFFER, None };
  int erb, evb;
  XSetWindowAttributes swa;
  /* open display */
  dpy = FUNC5(display);
  if (NULL == dpy) return GL_TRUE;
  /* query for glx */
  if (!FUNC10(dpy, &erb, &evb)) return GL_TRUE;
  /* choose visual */
  if (*visual == -1)
  {
    vi = FUNC7(dpy, FUNC0(dpy), attrib);
    if (NULL == vi) return GL_TRUE;
    *visual = (int)FUNC6(vi->visual);
  }
  else
  {
    int n_vis, i;
    vis = FUNC4(dpy, 0, NULL, &n_vis);
    for (i=0; i<n_vis; i++)
    {
      if ((int)FUNC6(vis[i].visual) == *visual)
        vi = &vis[i];
    }
    if (vi == NULL) return GL_TRUE;
  }
  /* create context */
  ctx = FUNC8(dpy, vi, None, True);
  if (NULL == ctx) return GL_TRUE;
  /* create window */
  /*wnd = XCreateSimpleWindow(dpy, RootWindow(dpy, vi->screen), 0, 0, 1, 1, 1, 0, 0);*/
  cmap = FUNC2(dpy, FUNC1(dpy, vi->screen), vi->visual, AllocNone);
  swa.border_pixel = 0;
  swa.colormap = cmap;
  wnd = FUNC3(dpy, FUNC1(dpy, vi->screen), 
                      0, 0, 1, 1, 0, vi->depth, InputOutput, vi->visual, 
                      CWBorderPixel | CWColormap, &swa);
  /* make context current */
  if (!FUNC9(dpy, wnd, ctx)) return GL_TRUE;
  return GL_FALSE;
}