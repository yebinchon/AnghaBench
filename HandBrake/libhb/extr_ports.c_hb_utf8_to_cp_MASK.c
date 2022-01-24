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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (char const*) ; 

char * FUNC6(const char *src)
{
    char *dst = NULL;

#if defined( SYS_MINGW )
    int num_chars = MultiByteToWideChar(CP_UTF8, 0, src, -1, NULL, 0);
    if (num_chars <= 0)
        return NULL;
    wchar_t * tmp = calloc(num_chars, sizeof(wchar_t));
    MultiByteToWideChar(CP_UTF8, 0, src, -1, tmp, num_chars);
    int len = WideCharToMultiByte(GetACP(), 0, tmp, num_chars, NULL, 0, NULL, NULL);
    if (len <= 0)
        return NULL;
    dst = calloc(len, sizeof(char));
    WideCharToMultiByte(GetACP(), 0, tmp, num_chars, dst, len, NULL, NULL);
    free(tmp);
#else
    // Other platforms don't have code pages
    dst = FUNC5(src);
#endif

    return dst;
}