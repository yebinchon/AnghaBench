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
 int CACHE_BLOCKSIZE ; 
 int SPIRAM_BANKSWITCH_RESERVE ; 
 size_t FUNC0 () ; 

size_t FUNC1(void)
{
    int paddr_start = (4096 * 1024) - (CACHE_BLOCKSIZE * SPIRAM_BANKSWITCH_RESERVE);
    return FUNC0()-paddr_start;
}