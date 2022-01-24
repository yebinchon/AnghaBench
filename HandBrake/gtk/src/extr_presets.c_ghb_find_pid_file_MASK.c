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
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  F_TLOCK ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const*,char*,int*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*,char*,int) ; 

int
FUNC13()
{
    const gchar *file;
    gchar       *config;

    config = FUNC8(NULL);

    if (FUNC4(config, G_FILE_TEST_IS_DIR))
    {
        GDir *gdir;
        gdir = FUNC2(config, 0, NULL);
        file = FUNC3(gdir);
        while (file)
        {
            if (FUNC12(file, "ghb.pid.", 8) == 0)
            {
                gchar *path;
                int    pid;

                FUNC11(file, "ghb.pid.%d", &pid);
                path = FUNC6("%s/%s", config, file);

#if !defined(_WIN32)
                int fd, lock = 1;

                fd = FUNC10(path, O_RDWR);
                if (fd >= 0)
                {
                    lock = FUNC9(fd, F_TLOCK, 0);
                }
                if (lock == 0)
                {
                    FUNC0(fd);
                    FUNC1(gdir);
                    FUNC7(path);
                    FUNC5(path);
                    FUNC5(config);
                    return pid;
                }
                FUNC5(path);
                FUNC0(fd);
#else
                g_dir_close(gdir);
                g_unlink(path);
                g_free(path);
                g_free(config);
                return pid;
#endif
            }
            file = FUNC3(gdir);
        }
        FUNC1(gdir);
    }
    FUNC5(config);
    return -1;
}