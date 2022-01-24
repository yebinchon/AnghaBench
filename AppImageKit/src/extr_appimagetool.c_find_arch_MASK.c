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
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_EXECUTABLE ; 
 int /*<<< orphan*/  G_FILE_TEST_IS_SYMLINK ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*) ; 

void FUNC9(const gchar *real_path, const gchar *pattern, bool* archs) {
    GDir *dir;
    gchar *full_name;
    dir = FUNC2(real_path, 0, NULL);
    if (dir != NULL) {
        const gchar *entry;
        while ((entry = FUNC3(dir)) != NULL) {
            full_name = FUNC0(real_path, entry, NULL);
            if (FUNC4(full_name, G_FILE_TEST_IS_SYMLINK)) {
            } else if (FUNC4(full_name, G_FILE_TEST_IS_DIR)) {
                FUNC9(full_name, pattern, archs);
            } else if (FUNC4(full_name, G_FILE_TEST_IS_EXECUTABLE) || FUNC5(pattern, entry) ) {
                FUNC8(full_name, archs);
            }
        }
        FUNC1(dir);
    }
    else {
        FUNC7("%s: %s", real_path, FUNC6(errno));
    }
}