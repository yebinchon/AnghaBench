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
 int RTLD_LOCAL ; 
 int RTLD_NOW ; 
 char* FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (char*,int) ; 

__attribute__((used)) static void *FUNC3(const char *dir, const char *soname)
{
    char *path = FUNC0("%s/%s.so", dir, soname);
    void *ret = NULL;

    if (path) {
        ret = FUNC2(path, RTLD_LOCAL|RTLD_NOW);
        FUNC1(path);
    }

    return ret;
}