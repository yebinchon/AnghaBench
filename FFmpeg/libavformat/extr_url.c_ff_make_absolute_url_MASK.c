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
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char const*,char*) ; 

void FUNC7(char *buf, int size, const char *base,
                          const char *rel)
{
    char *sep, *path_query;
    /* Absolute path, relative to the current server */
    if (base && FUNC6(base, "://") && rel[0] == '/') {
        if (base != buf)
            FUNC1(buf, base, size);
        sep = FUNC6(buf, "://");
        if (sep) {
            /* Take scheme from base url */
            if (rel[1] == '/') {
                sep[1] = '\0';
            } else {
                /* Take scheme and host from base url */
                sep += 3;
                sep = FUNC3(sep, '/');
                if (sep)
                    *sep = '\0';
            }
        }
        FUNC0(buf, rel, size);
        return;
    }
    /* If rel actually is an absolute url, just copy it */
    if (!base || FUNC6(rel, "://") || rel[0] == '/') {
        FUNC1(buf, rel, size);
        return;
    }
    if (base != buf)
        FUNC1(buf, base, size);

    /* Strip off any query string from base */
    path_query = FUNC3(buf, '?');
    if (path_query)
        *path_query = '\0';

    /* Is relative path just a new query part? */
    if (rel[0] == '?') {
        FUNC0(buf, rel, size);
        return;
    }

    /* Remove the file name from the base url */
    sep = FUNC5(buf, '/');
    if (sep)
        sep[1] = '\0';
    else
        buf[0] = '\0';
    while (FUNC2(rel, "../", NULL) && sep) {
        /* Remove the path delimiter at the end */
        sep[0] = '\0';
        sep = FUNC5(buf, '/');
        /* If the next directory name to pop off is "..", break here */
        if (!FUNC4(sep ? &sep[1] : buf, "..")) {
            /* Readd the slash we just removed */
            FUNC0(buf, "/", size);
            break;
        }
        /* Cut off the directory name */
        if (sep)
            sep[1] = '\0';
        else
            buf[0] = '\0';
        rel += 3;
    }
    FUNC0(buf, rel, size);
}