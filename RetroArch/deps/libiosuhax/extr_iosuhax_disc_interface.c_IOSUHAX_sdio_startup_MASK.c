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
 int /*<<< orphan*/  FSA_REF_SD ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsaFdSd ; 
 int sdioFd ; 

__attribute__((used)) static bool FUNC3(void)
{
    if(!FUNC2(FSA_REF_SD))
        return false;

    if(sdioFd < 0)
    {
        int res = FUNC0(fsaFdSd, "/dev/sdcard01", &sdioFd);
        if(res < 0)
        {
            FUNC1(FSA_REF_SD);
            sdioFd = -1;
        }
    }

    return (sdioFd >= 0);
}