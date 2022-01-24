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
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(GhbValue *settings, GtkWidget *widget)
{
    const gchar *key = NULL;
    GhbValue *value;

    if (widget == NULL) return;
    FUNC0("ghb_widget_to_setting");
    // Find corresponding setting
    key = FUNC2(widget);
    if (key == NULL) return;
    value = FUNC3(widget);
    if (value != NULL)
    {
        FUNC1(settings, key, value);
    }
    else
    {
        FUNC0("No value found for %s\n", key);
    }
}