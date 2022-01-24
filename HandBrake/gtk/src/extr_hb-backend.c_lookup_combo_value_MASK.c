#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_3__ {int /*<<< orphan*/  opts; int /*<<< orphan*/ * (* opt_get ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ combo_name_map_t ;
typedef  int /*<<< orphan*/  GhbValue ;
typedef  int /*<<< orphan*/  GhbType ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GhbValue *
FUNC3(const gchar *name, const GhbValue *gval, GhbType type)
{
    combo_name_map_t *entry = FUNC0(name);
    if (entry != NULL)
    {
        if (entry->opt_get != NULL)
        {
            return entry->opt_get(name, entry->opts, gval, type);
        }
        else
        {
            FUNC1("Combobox entry %s missing opt_get()", name);
        }
    }
    else
    {
        FUNC1("Combobox entry %s not found", name);
    }
    return NULL;
}