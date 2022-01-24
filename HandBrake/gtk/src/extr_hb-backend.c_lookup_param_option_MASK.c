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
struct TYPE_5__ {char* name; } ;
typedef  TYPE_1__ hb_filter_param_t ;
typedef  char gchar ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static const gchar*
FUNC1(const hb_filter_param_t *param, const GhbValue *gval)
{
    const gchar *result = "";

    const hb_filter_param_t *entry;
    entry = FUNC0(param, gval);
    if (entry != NULL)
    {
        result = entry->name;
    }
    return result;
}