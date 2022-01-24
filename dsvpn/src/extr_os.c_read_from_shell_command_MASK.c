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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char*,char) ; 

__attribute__((used)) static char *FUNC5(char *result, size_t sizeof_result, const char *command)
{
    FILE *fp;
    char *pnt;

    if ((fp = FUNC3(command, "r")) == NULL) {
        return NULL;
    }
    if (FUNC0(result, (int) sizeof_result, fp) == NULL) {
        FUNC2(fp);
        FUNC1(stderr, "Command [%s] failed]\n", command);
        return NULL;
    }
    if ((pnt = FUNC4(result, '\n')) != NULL) {
        *pnt = 0;
    }
    (void) FUNC2(fp);

    return *result == 0 ? NULL : result;
}