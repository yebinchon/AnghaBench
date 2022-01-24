#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  pSrc; int /*<<< orphan*/  pDst; } ;
typedef  TYPE_1__ SCopySection ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  CopyParamCallback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ M64ERR_SUCCESS ; 
 int /*<<< orphan*/  M64MSG_ERROR ; 
 int /*<<< orphan*/  M64TYPE_STRING ; 

int FUNC4(const char *pccSourceSectionName, const char *pccDestSectionName, const char *sdlJoyName)
{
    SCopySection cpyContext;

    if (FUNC1(pccSourceSectionName, &cpyContext.pSrc) != M64ERR_SUCCESS)
    {
        FUNC3(M64MSG_ERROR, "auto_copy_inputconfig: Couldn't open source config section '%s' for copying", pccSourceSectionName);
        return 0;
    }

    if (FUNC1(pccDestSectionName, &cpyContext.pDst) != M64ERR_SUCCESS)
    {
        FUNC3(M64MSG_ERROR, "auto_copy_inputconfig: Couldn't open destination config section '%s' for copying", pccDestSectionName);
        return 0;
    }

    // set the 'name' parameter
    if (sdlJoyName != NULL)
    {
        if (FUNC2(cpyContext.pDst, "name", M64TYPE_STRING, sdlJoyName) != M64ERR_SUCCESS)
        {
            FUNC3(M64MSG_ERROR, "auto_copy_inputconfig: Couldn't set 'name' parameter to '%s' in section '%s'", sdlJoyName, pccDestSectionName);
            return 0;
        }
    }

    // the copy gets done by the callback function
    if (FUNC0(cpyContext.pSrc, (void *) &cpyContext, CopyParamCallback) != M64ERR_SUCCESS)
    {
        FUNC3(M64MSG_ERROR, "auto_copy_inputconfig: parameter list copy failed");
        return 0;
    }

    return 1;
}