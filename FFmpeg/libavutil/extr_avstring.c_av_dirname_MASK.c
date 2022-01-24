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
 char* FUNC0 (char*,char*,char*) ; 
 char* FUNC1 (char*,char) ; 
 char* FUNC2 (char*,char) ; 

const char *FUNC3(char *path)
{
    char *p = path ? FUNC2(path, '/') : NULL;

#if HAVE_DOS_PATHS
    char *q = path ? strrchr(path, '\\') : NULL;
    char *d = path ? strchr(path, ':')  : NULL;

    d = d ? d + 1 : d;

    p = FFMAX3(p, q, d);
#endif

    if (!p)
        return ".";

    *p = '\0';

    return path;
}