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
struct TYPE_3__ {int /*<<< orphan*/  prefs; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,char const*) ; 

__attribute__((used)) static gboolean
FUNC3(signal_user_data_t *ud, const char *str)
{
    if (FUNC0(ud->prefs, "auto_name"))
    {
        const gchar *template;

        template = FUNC1(ud->prefs, "auto_name_template");
        if (FUNC2(template, str) != NULL)
            return TRUE;
    }
    return FALSE;
}