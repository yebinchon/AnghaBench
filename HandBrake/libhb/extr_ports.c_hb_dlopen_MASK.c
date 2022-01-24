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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int RTLD_LAZY ; 
 int RTLD_LOCAL ; 
 void* FUNC1 (char const*,int) ; 

void * FUNC2(const char *name)
{
#ifdef SYS_MINGW
    HMODULE h = LoadLibraryA(name);
#else
    void *h = FUNC1(name, RTLD_LAZY | RTLD_LOCAL);
#endif

    return h;
}