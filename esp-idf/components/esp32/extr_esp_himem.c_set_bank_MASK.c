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
 scalar_t__ SOC_EXTRAM_DATA_LOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,scalar_t__,int,int,int) ; 

__attribute__((used)) static void FUNC2(int virt_bank, int phys_bank, int ct)
{
    int r;
    r = FUNC1( 0, 0, SOC_EXTRAM_DATA_LOW + CACHE_BLOCKSIZE * virt_bank, phys_bank * CACHE_BLOCKSIZE, 32, ct );
    FUNC0(r == 0);
    r = FUNC1( 1, 0, SOC_EXTRAM_DATA_LOW + CACHE_BLOCKSIZE * virt_bank, phys_bank * CACHE_BLOCKSIZE, 32, ct );
    FUNC0(r == 0);
}