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

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_TEST_IS_REGULAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(const gchar *name)
{
    gchar *config, *path;

    config = FUNC4(NULL);
    path   = FUNC2 ("%s/%s", config, name);
    if (FUNC0(path, G_FILE_TEST_IS_REGULAR))
    {
        FUNC3(path);
    }
    FUNC1(path);
    FUNC1(config);
}