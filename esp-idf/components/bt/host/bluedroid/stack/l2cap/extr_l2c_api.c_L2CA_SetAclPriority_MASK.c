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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC2 (BD_ADDR bd_addr, UINT8 priority)
{
    FUNC0 ("L2CA_SetAclPriority()  bdaddr: %02x%02x%02x%02x%04x, priority:%d",
                     bd_addr[0], bd_addr[1], bd_addr[2],
                     bd_addr[3], (bd_addr[4] << 8) + bd_addr[5], priority);

    return (FUNC1(bd_addr, priority, FALSE));
}