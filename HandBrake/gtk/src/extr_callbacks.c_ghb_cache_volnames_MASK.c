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
typedef  int /*<<< orphan*/  signal_user_data_t ;
typedef  int /*<<< orphan*/ * gpointer ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GSourceFunc ;
typedef  TYPE_1__ GList ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ ghb_file_menu_add_dvd ; 
 int /*<<< orphan*/  volname_hash ; 
 int /*<<< orphan*/  volname_mutex ; 

gpointer
FUNC14(signal_user_data_t *ud)
{
    GList *link, *drives;

    FUNC2("ghb_cache_volnames()");
    link = drives = FUNC0();
    if (drives == NULL)
        return NULL;

    FUNC9(volname_mutex);
    FUNC6(volname_hash);
    while (link != NULL)
    {
        gchar *name, *drive;

#if !defined(_WIN32)
        if (!FUNC3 (link->data))
        {
            FUNC11(link->data);
            link = link->next;
            continue;
        }
#endif
        drive = FUNC13(link->data);
        name = FUNC12(drive);

        if (drive != NULL && name != NULL)
        {
            FUNC5(volname_hash, drive, name);
        }
        else
        {
            if (drive != NULL)
                FUNC4(drive);
            if (name != NULL)
                FUNC4(name);
        }

        FUNC1(link->data);
        link = link->next;
    }
    FUNC10(volname_mutex);

    FUNC8(drives);

    FUNC7((GSourceFunc)ghb_file_menu_add_dvd, ud);

    return NULL;
}