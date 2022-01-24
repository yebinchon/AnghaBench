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
typedef  int /*<<< orphan*/  guint8 ;
typedef  int gint ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(
    GdkPixbuf * pb,
    guint8 r,
    guint8 g,
    guint8 b,
    gint x,
    gint y,
    gint len,
    gint width)
{
    guint8 *pixels = FUNC1 (pb);
    guint8 *dst;
    gint ii, jj;
    gint channels = FUNC0 (pb);
    gint stride = FUNC2 (pb);

    for (jj = 0; jj < width; jj++)
    {
        dst = pixels + y * stride + (x+jj) * channels;
        for (ii = 0; ii < len; ii++)
        {
            dst[0] = r;
            dst[1] = g;
            dst[2] = b;
            dst += stride;
        }
    }
}