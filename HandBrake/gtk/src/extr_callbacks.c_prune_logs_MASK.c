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
typedef  int time_t ;
struct stat {int st_mtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  prefs; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gint ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(signal_user_data_t *ud)
{
    gchar *dest_dir;
    gint days;

    // Only prune logs stored in the default config dir location
    days = FUNC10(ud->prefs, "LogLongevity");
    if (days > 365)
        return;

    dest_dir = FUNC8("EncodeLogs");
    if (FUNC3(dest_dir, G_FILE_TEST_IS_DIR))
    {
        const gchar *file;
        gint duration = days * 24 * 60 * 60;

        GDir *gdir = FUNC1(dest_dir, 0, NULL);
        time_t now;

        now = FUNC11(NULL);
        file = FUNC2(gdir);
        while (file)
        {
            gchar *path;
            struct stat stbuf;

            path = FUNC6("%s/%s", dest_dir, file);
            FUNC5(path, &stbuf);
            if (now - stbuf.st_mtime > duration)
            {
                FUNC7(path);
            }
            FUNC4(path);
            file = FUNC2(gdir);
        }
        FUNC0(gdir);
    }
    FUNC4(dest_dir);
    FUNC9(ud);
}