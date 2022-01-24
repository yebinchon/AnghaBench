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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  binpath ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 int MAXPATHLEN ; 
 int FUNC0 (char*,int*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 

int FUNC5(char* test_name, char* test_path) {
    char binpath[MAXPATHLEN];
    char* dirpath;
    uint32_t size = sizeof(binpath);
    int retval;

    retval = FUNC0(binpath, &size);
    FUNC2(retval == 0);
    dirpath = FUNC3(binpath);

    FUNC4(test_path, MAXPATHLEN, "%s/perfindex-%s.dylib", dirpath, test_name);
    if(FUNC1(test_path, F_OK) == 0)
        return 0;
    else
        return -1;
}