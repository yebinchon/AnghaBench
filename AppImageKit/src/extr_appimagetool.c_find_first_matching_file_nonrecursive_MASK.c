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
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

gchar* FUNC8(const gchar *real_path, const gchar *pattern) {
    GDir *dir;
    gchar *full_name;
    dir = FUNC2(real_path, 0, NULL);
    if (dir != NULL) {
        const gchar *entry;
        while ((entry = FUNC3(dir)) != NULL) {
            full_name = FUNC0(real_path, entry, NULL);
            if (FUNC4(full_name, G_FILE_TEST_IS_REGULAR)) {
                if(FUNC5(pattern, entry))
                    return(full_name);
            }
        }
        FUNC1(dir);
    }
    else { 
        FUNC7("%s: %s", real_path, FUNC6(errno));
    }
    return NULL;
}