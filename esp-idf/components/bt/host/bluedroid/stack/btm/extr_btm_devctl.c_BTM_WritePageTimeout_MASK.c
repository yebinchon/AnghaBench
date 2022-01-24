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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

tBTM_STATUS FUNC2(UINT16 timeout)
{
    FUNC0 ("BTM: BTM_WritePageTimeout: Timeout: %d.", timeout);

    /* Send the HCI command */
    if (FUNC1 (timeout)) {
        return (BTM_SUCCESS);
    } else {
        return (BTM_NO_RESOURCES);
    }
}