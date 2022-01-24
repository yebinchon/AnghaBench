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
typedef  int /*<<< orphan*/  FSCmdBlock ;
typedef  int /*<<< orphan*/  FSClient ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (void*,void*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (char const*,char*,void*,void*) ; 

int FUNC7(const char *path)
{
    int result = -1;

    /* get command and client */
    void* pClient = FUNC5(sizeof(FSClient));
    void* pCmd = FUNC5(sizeof(FSCmdBlock));

    if(!pClient || !pCmd) {
        /* just in case free if not 0 */
        if(pClient)
            FUNC4(pClient);
        if(pCmd)
            FUNC4(pCmd);
        return -2;
    }

    FUNC1();
    FUNC2(pCmd);
    FUNC0(pClient, -1);

    char *mountPath = NULL;

    if(FUNC3(pClient, pCmd, &mountPath) == 0) {
        result = FUNC6(path, mountPath, pClient, pCmd);
        FUNC4(mountPath);
    }

    return result;
}