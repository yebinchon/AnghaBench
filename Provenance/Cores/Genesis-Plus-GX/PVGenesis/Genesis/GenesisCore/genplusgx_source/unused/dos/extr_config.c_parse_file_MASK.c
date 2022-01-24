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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

int FUNC7(char *filename, int *argc, char **argv)
{
    char token[0x100];
    FILE *handle = NULL;

    *argc = 0;
    handle = FUNC2(filename, "r");
    if(!handle) return (0);

    FUNC3(handle, "%s", &token[0]);
    while(!(FUNC1(handle)))
    {
        int size = FUNC6(token) + 1;
        argv[*argc] = FUNC4(size);
        if(!argv[*argc]) return (0);
        FUNC5(argv[*argc], token);
        *argc += 1;
        FUNC3(handle, "%s", &token[0]);
    }

    if(handle) FUNC0(handle);
    return (1);
}