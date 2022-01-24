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
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,void**,void**,char**) ; 

int FUNC4(const char *path)
{
    void *pClient = 0;
    void *pCmd = 0;
    char *mountPath = 0;

    int result = FUNC3(path, &pClient, &pCmd, &mountPath);
    if(result == 0)
    {
        FUNC1(pClient, pCmd, mountPath);
        FUNC0(pClient, -1);
        FUNC2(pClient);
        FUNC2(pCmd);
        FUNC2(mountPath);
        /* FSShutdown(); */
    }
    return result;
}