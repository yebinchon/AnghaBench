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
typedef  int guint ;
typedef  int /*<<< orphan*/  GValue ;
typedef  int /*<<< orphan*/  GParamSpec ;
typedef  int /*<<< orphan*/  GObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (GObject    *object,
                                          guint       param_id,
                                          GValue     *value,
                                          GParamSpec *psec)
{
    //CustomCellRendererButton  *cellbutton = CUSTOM_CELL_RENDERER_BUTTON(object);

    switch (param_id)
    {
        default:
            FUNC0 (object, param_id, psec);
            break;
    }
}