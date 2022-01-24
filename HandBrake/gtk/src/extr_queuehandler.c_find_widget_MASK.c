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
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static GtkWidget *FUNC7(GtkWidget *widget, gchar *name)
{
    const char *wname;
    GtkWidget *result = NULL;

    if (widget == NULL || name == NULL)
        return NULL;

    wname = FUNC5(widget);
    if (wname != NULL && !FUNC6(wname, name, 80))
    {
        return widget;
    }
    if (FUNC1(widget))
    {
        GList *list, *link;
        link = list = FUNC4(FUNC0(widget));
        while (link)
        {
            result = FUNC7(FUNC2(link->data), name);
            if (result != NULL)
                break;
            link = link->next;
        }
        FUNC3(list);
    }
    return result;
}