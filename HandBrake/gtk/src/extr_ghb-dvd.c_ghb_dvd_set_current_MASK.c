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
struct TYPE_3__ {int /*<<< orphan*/ * current_dvd_device; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ guint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GFileInfo ;
typedef  int /*<<< orphan*/  GFile ;

/* Variables and functions */
 scalar_t__ DRIVE_CDROM ; 
 int /*<<< orphan*/  G_FILE_ATTRIBUTE_STANDARD_TYPE ; 
 int /*<<< orphan*/  G_FILE_QUERY_INFO_NONE ; 
 scalar_t__ G_FILE_TYPE_SPECIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*) ; 

void
FUNC9(const gchar *name, signal_user_data_t *ud)
{
#if !defined(_WIN32)
    GFile *gfile;
    GFileInfo *info;
    gchar *resolved = FUNC8(name);

    if (ud->current_dvd_device != NULL)
    {
        FUNC4(ud->current_dvd_device);
        ud->current_dvd_device = NULL;
    }
    gfile = FUNC2(resolved);
    info = FUNC3(gfile,
        G_FILE_ATTRIBUTE_STANDARD_TYPE,
        G_FILE_QUERY_INFO_NONE, NULL, NULL);
    if (info != NULL)
    {
        if (FUNC1(info) == G_FILE_TYPE_SPECIAL)
        {
            // I could go through the trouble to scan the connected drives and
            // verify that this device is connected and is a DVD.  But I don't
            // think its necessary.
            ud->current_dvd_device = resolved;
        }
        else
        {
            FUNC4(resolved);
        }
        FUNC5(info);
    }
    else
    {
        FUNC4(resolved);
    }
    FUNC5(gfile);
#else
    gchar drive[4];
    guint dtype;

    if (ud->current_dvd_device != NULL)
    {
        g_free(ud->current_dvd_device);
        ud->current_dvd_device = NULL;
    }
    g_strlcpy(drive, name, 4);
    dtype = GetDriveType(drive);
    if (dtype == DRIVE_CDROM)
    {
        ud->current_dvd_device = g_strdup(name);
    }
#endif
}