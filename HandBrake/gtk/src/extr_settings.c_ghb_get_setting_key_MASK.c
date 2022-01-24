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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,char*,int) ; 

const gchar*
FUNC5(GtkWidget *widget)
{
    const gchar *name;

    FUNC1("get_setting_key ()\n");
    if (widget == NULL) return NULL;
    name = FUNC2(FUNC0(widget));

    if (name == NULL || !FUNC4(name, "Gtk", 3))
    {
        name = FUNC3(widget);
    }
    if (name == NULL)
    {
        // Bad widget pointer?  Should never happen.
        FUNC1("Bad widget\n");
        return NULL;
    }
    return name;
}