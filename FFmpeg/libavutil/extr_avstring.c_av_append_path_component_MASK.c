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
 size_t SIZE_MAX ; 
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 

char *FUNC4(const char *path, const char *component)
{
    size_t p_len, c_len;
    char *fullpath;

    if (!path)
        return FUNC1(component);
    if (!component)
        return FUNC1(path);

    p_len = FUNC3(path);
    c_len = FUNC3(component);
    if (p_len > SIZE_MAX - c_len || p_len + c_len > SIZE_MAX - 2)
        return NULL;
    fullpath = FUNC0(p_len + c_len + 2);
    if (fullpath) {
        if (p_len) {
            FUNC2(fullpath, path, p_len + 1);
            if (c_len) {
                if (fullpath[p_len - 1] != '/' && component[0] != '/')
                    fullpath[p_len++] = '/';
                else if (fullpath[p_len - 1] == '/' && component[0] == '/')
                    p_len--;
            }
        }
        FUNC2(&fullpath[p_len], component, c_len + 1);
        fullpath[p_len + c_len] = 0;
    }
    return fullpath;
}