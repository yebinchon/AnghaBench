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
typedef  char* sds ;
typedef  int /*<<< orphan*/  cwd ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 char* FUNC7 (char*,char*) ; 

sds FUNC8(char *filename) {
    char cwd[1024];
    sds abspath;
    sds relpath = FUNC5(filename);

    relpath = FUNC7(relpath," \r\n\t");
    if (relpath[0] == '/') return relpath; /* Path is already absolute. */

    /* If path is relative, join cwd and relative path. */
    if (FUNC0(cwd,sizeof(cwd)) == NULL) {
        FUNC3(relpath);
        return NULL;
    }
    abspath = FUNC5(cwd);
    if (FUNC4(abspath) && abspath[FUNC4(abspath)-1] != '/')
        abspath = FUNC1(abspath,"/");

    /* At this point we have the current path always ending with "/", and
     * the trimmed relative path. Try to normalize the obvious case of
     * trailing ../ elements at the start of the path.
     *
     * For every "../" we find in the filename, we remove it and also remove
     * the last element of the cwd, unless the current cwd is "/". */
    while (FUNC4(relpath) >= 3 &&
           relpath[0] == '.' && relpath[1] == '.' && relpath[2] == '/')
    {
        FUNC6(relpath,3,-1);
        if (FUNC4(abspath) > 1) {
            char *p = abspath + FUNC4(abspath)-2;
            int trimlen = 1;

            while(*p != '/') {
                p--;
                trimlen++;
            }
            FUNC6(abspath,0,-(trimlen+1));
        }
    }

    /* Finally glue the two parts together. */
    abspath = FUNC2(abspath,relpath);
    FUNC3(relpath);
    return abspath;
}