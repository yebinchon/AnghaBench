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
typedef  int /*<<< orphan*/  m64p_error ;
typedef  int /*<<< orphan*/  m64p_dynlib_handle ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  M64ERR_INTERNAL ; 
 int /*<<< orphan*/  M64ERR_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

m64p_error FUNC6(m64p_dynlib_handle LibHandle)
{
    int rval = FUNC1(LibHandle);

    if (rval == 0)
    {
        char *pchErrMsg;
        DWORD dwErr = FUNC2(); 
        FUNC0(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM, NULL, dwErr,
                      FUNC4(LANG_NEUTRAL, SUBLANG_DEFAULT), (LPTSTR) &pchErrMsg, 0, NULL);
        FUNC5(stderr, "FreeLibrary() error: %s\n", pchErrMsg);
        FUNC3(pchErrMsg);
        return M64ERR_INTERNAL;
    }

    return M64ERR_SUCCESS;
}