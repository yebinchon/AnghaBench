#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t gint ;
typedef  int gdouble ;
struct TYPE_6__ {size_t count; TYPE_1__* map; } ;
typedef  TYPE_2__ combo_opts_t ;
struct TYPE_5__ {int ivalue; } ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__ const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static gdouble
FUNC1(const combo_opts_t *opts, const GhbValue *gval)
{
    gint ii;
    gdouble result = -1;

    ii = FUNC0(opts, gval);
    if (ii < opts->count)
    {
        result = opts->map[ii].ivalue;
    }
    return result;
}