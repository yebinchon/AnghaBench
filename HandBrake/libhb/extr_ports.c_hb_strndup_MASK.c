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
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char const*,size_t) ; 

char * FUNC4(const char * src, size_t len)
{
#ifdef SYS_MINGW
    char * result, * end;

    if (src == NULL)
    {
        return NULL;
    }

    end = memchr(src, 0, len);
    if (end != NULL)
    {
        len = end - src;
    }

    result = malloc(len + 1);
    if (result == NULL)
    {
        return NULL;
    }
    memcpy(result, src, len);
    result[len] = 0;

    return result;
#else
    return FUNC3(src, len);
#endif
}