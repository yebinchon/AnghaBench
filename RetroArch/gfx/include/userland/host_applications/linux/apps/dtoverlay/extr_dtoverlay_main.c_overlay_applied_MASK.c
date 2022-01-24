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
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 char* FUNC5 (char*,char const*) ; 

__attribute__((used)) static int FUNC6(const char *overlay_dir)
{
    char status[7] = { '\0' };
    const char *status_path = FUNC5("%s/status", overlay_dir);
    FILE *fp = FUNC1(status_path, "r");
    int bytes = 0;
    if (fp)
    {
	bytes = FUNC2(status, 1, sizeof(status), fp);
	FUNC0(fp);
    }
    FUNC3(status_path);
    return (bytes == sizeof(status)) &&
	(FUNC4(status, "applied", sizeof(status)) == 0);
}