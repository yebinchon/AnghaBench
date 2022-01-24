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
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GDir ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_DIR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC8(const gchar *name, gboolean del_top)
{
    const gchar *file;

    if (FUNC3(name, G_FILE_TEST_IS_DIR))
    {
        GDir *gdir = FUNC1(name, 0, NULL);
        file = FUNC2(gdir);
        while (file)
        {
            gchar *path;
            path = FUNC6("%s/%s", name, file);
            FUNC8(path, TRUE);
            FUNC4(path);
            file = FUNC2(gdir);
        }
        if (del_top)
            FUNC5(name);
        FUNC0(gdir);
    }
    else
    {
        FUNC7(name);
    }
}