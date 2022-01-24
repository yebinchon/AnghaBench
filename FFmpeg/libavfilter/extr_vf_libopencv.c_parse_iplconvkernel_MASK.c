#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  IplConvKernel ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int CV_SHAPE_CROSS ; 
 int CV_SHAPE_CUSTOM ; 
 int CV_SHAPE_ELLIPSE ; 
 int CV_SHAPE_RECT ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int**) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int,int,int,int*) ; 
 int FUNC4 (int*,int*,int**,char*,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int*,int*,int*,int*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(IplConvKernel **kernel, char *buf, void *log_ctx)
{
    char shape_filename[128] = "", shape_str[32] = "rect";
    int cols = 0, rows = 0, anchor_x = 0, anchor_y = 0, shape = CV_SHAPE_RECT;
    int *values = NULL, ret = 0;

    FUNC5(buf, "%dx%d+%dx%d/%32[^=]=%127s", &cols, &rows, &anchor_x, &anchor_y, shape_str, shape_filename);

    if      (!FUNC6(shape_str, "rect"   )) shape = CV_SHAPE_RECT;
    else if (!FUNC6(shape_str, "cross"  )) shape = CV_SHAPE_CROSS;
    else if (!FUNC6(shape_str, "ellipse")) shape = CV_SHAPE_ELLIPSE;
    else if (!FUNC6(shape_str, "custom" )) {
        shape = CV_SHAPE_CUSTOM;
        if ((ret = FUNC4(&cols, &rows, &values, shape_filename, log_ctx)) < 0)
            return ret;
    } else {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Shape unspecified or type '%s' unknown.\n", shape_str);
        ret = FUNC0(EINVAL);
        goto out;
    }

    if (rows <= 0 || cols <= 0) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Invalid non-positive values for shape size %dx%d\n", cols, rows);
        ret = FUNC0(EINVAL);
        goto out;
    }

    if (anchor_x < 0 || anchor_y < 0 || anchor_x >= cols || anchor_y >= rows) {
        FUNC2(log_ctx, AV_LOG_ERROR,
               "Shape anchor %dx%d is not inside the rectangle with size %dx%d.\n",
               anchor_x, anchor_y, cols, rows);
        ret = FUNC0(EINVAL);
        goto out;
    }

    *kernel = FUNC3(cols, rows, anchor_x, anchor_y, shape, values);
    if (!*kernel) {
        ret = FUNC0(ENOMEM);
        goto out;
    }

    FUNC2(log_ctx, AV_LOG_VERBOSE, "Structuring element: w:%d h:%d x:%d y:%d shape:%s\n",
           rows, cols, anchor_x, anchor_y, shape_str);
out:
    FUNC1(&values);
    return ret;
}