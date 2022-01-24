#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ index; int /*<<< orphan*/ * name; int /*<<< orphan*/ * short_name; } ;
typedef  TYPE_1__ hb_filter_param_t ;
typedef  scalar_t__ gint64 ;
typedef  size_t gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 scalar_t__ GHB_BOOL ; 
 scalar_t__ GHB_DOUBLE ; 
 scalar_t__ GHB_INT ; 
 scalar_t__ GHB_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

const hb_filter_param_t*
FUNC4(const hb_filter_param_t *param, const GhbValue *gval)
{
    gint ii;

    if (param == NULL)
        return NULL;

    if (FUNC2(gval) == GHB_STRING)
    {
        const gchar *str;
        str = FUNC1(gval);
        for (ii = 0; param[ii].name != NULL; ii++)
        {
            if (FUNC3(param[ii].short_name, str) == 0 ||
                FUNC3(param[ii].name, str) == 0)
            {
                return &param[ii];
            }
        }
    }
    else if (FUNC2(gval) == GHB_INT ||
             FUNC2(gval) == GHB_DOUBLE ||
             FUNC2(gval) == GHB_BOOL)
    {
        gint64 val;
        val = FUNC0(gval);
        for (ii = 0; param[ii].name != NULL; ii++)
        {
            if ((gint64)param[ii].index == val)
            {
                return &param[ii];
            }
        }
    }
    return NULL;
}