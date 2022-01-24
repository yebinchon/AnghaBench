#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int format; int width; int height; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static AVFrame *FUNC4(enum AVPixelFormat pix_fmt, int width, int height)
{
    AVFrame *picture;
    int ret;

    picture = FUNC0();
    if (!picture)
        return NULL;

    picture->format = pix_fmt;
    picture->width  = width;
    picture->height = height;

    /* allocate the buffers for the frame data */
    ret = FUNC1(picture, 32);
    if (ret < 0) {
        FUNC3(stderr, "Could not allocate frame data.\n");
        FUNC2(1);
    }

    return picture;
}