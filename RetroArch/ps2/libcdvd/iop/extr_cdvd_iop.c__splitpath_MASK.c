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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 char* FUNC1 (char*,int) ; 

void FUNC2(const char *constpath, char *dir, char *fname)
{
    // 255 char max path-length is an ISO9660 restriction
    // we must change this for Joliet or relaxed iso restriction support
    static char pathcopy[1024 + 1];

    char *slash;

    FUNC0(pathcopy, constpath, 1024);

    slash = FUNC1(pathcopy, '/');

    // if the path doesn't contain a '/' then look for a '\'
    if (!slash)
        slash = FUNC1(pathcopy, (int)'\\');

    // if a slash was found
    if (slash != NULL) {
        // null terminate the path
        slash[0] = 0;
        // and copy the path into 'dir'
        FUNC0(dir, pathcopy, 1024);
        dir[255] = 0;

        // copy the filename into 'fname'
        FUNC0(fname, slash + 1, 128);
        fname[128] = 0;
    } else {
        dir[0] = 0;

        FUNC0(fname, pathcopy, 128);
        fname[128] = 0;
    }
}