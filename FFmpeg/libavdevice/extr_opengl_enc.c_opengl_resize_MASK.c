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
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int window_width; int window_height; scalar_t__ no_window; scalar_t__ inited; } ;
typedef  TYPE_1__ OpenGLContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *h, int width, int height)
{
    int ret = 0;
    OpenGLContext *opengl = h->priv_data;
    opengl->window_width = width;
    opengl->window_height = height;
    if (opengl->inited) {
        if (opengl->no_window &&
            (ret = FUNC1(h, AV_DEV_TO_APP_PREPARE_WINDOW_BUFFER, NULL , 0)) < 0) {
            FUNC0(opengl, AV_LOG_ERROR, "Application failed to prepare window buffer.\n");
            goto end;
        }
        if ((ret = FUNC3(h)) < 0)
            goto end;
        ret = FUNC2(h, NULL, 1, 0);
    }
  end:
    return ret;
}