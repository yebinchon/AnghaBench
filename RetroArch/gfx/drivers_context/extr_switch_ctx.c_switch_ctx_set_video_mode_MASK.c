#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_3__ {scalar_t__ height; int /*<<< orphan*/  width; } ;
struct TYPE_4__ {int refresh_rate; int /*<<< orphan*/  width; scalar_t__ height; int /*<<< orphan*/  win; int /*<<< orphan*/  egl; TYPE_1__ native_window; } ;
typedef  TYPE_2__ switch_ctx_data_t ;
typedef  int EGLint ;

/* Variables and functions */
#define  EGL_CONTEXT_CLIENT_VERSION 129 
#define  EGL_NONE 128 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static bool FUNC8(void *data,
                                      video_frame_info_t *video_info,
                                      unsigned width, unsigned height,
                                      bool fullscreen)
{
    /* Create an EGL rendering context */
    static const EGLint contextAttributeList[] =
        {
            EGL_CONTEXT_CLIENT_VERSION, 2,
            EGL_NONE};

    switch_ctx_data_t *ctx_nx = (switch_ctx_data_t *)data;

    FUNC7(data, &ctx_nx->width, &ctx_nx->height);

    ctx_nx->native_window.width = ctx_nx->width;
    ctx_nx->native_window.height = ctx_nx->height;

    ctx_nx->refresh_rate = 60;

#ifdef HAVE_EGL
    if (!egl_create_context(&ctx_nx->egl, contextAttributeList))
    {
        egl_report_error();
        goto error;
    }
#endif

#ifdef HAVE_EGL
    if (!egl_create_surface(&ctx_nx->egl, ctx_nx->win))
        goto error;
#endif

    FUNC4(ctx_nx->win, 0, 1080 - ctx_nx->height, ctx_nx->width, 1080);

    return true;

error:
    FUNC5("[NXGL]: EGL error: %d.\n", FUNC0());
    FUNC6(data);

    return false;
}