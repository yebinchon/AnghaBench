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
 int FSA_REF_SD ; 
 int FSA_REF_USB ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ fsaFdSd ; 
 scalar_t__ fsaFdUsb ; 

__attribute__((used)) static bool FUNC3(int fsaFd)
{
    FUNC2();

    if(FUNC1(NULL) < 0)
        return false;

    if(fsaFd == FSA_REF_SD)
    {
        if(fsaFdSd < 0)
        {
            fsaFdSd = FUNC0();
        }

        if(fsaFdSd >= 0)
            return true;
    }
    else if(fsaFd == FSA_REF_USB)
    {
        if(fsaFdUsb < 0)
        {
            fsaFdUsb = FUNC0();
        }

        if(fsaFdUsb >= 0)
            return true;
    }

    return false;
}