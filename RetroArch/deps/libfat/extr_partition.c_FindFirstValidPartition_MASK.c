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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sec_t ;
typedef  int /*<<< orphan*/  DISC_INTERFACE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_SECTOR_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

sec_t FUNC3(const DISC_INTERFACE* disc)
{
	uint8_t *sectorBuffer = (uint8_t*) FUNC1(MAX_SECTOR_SIZE);
	if (!sectorBuffer)
      return 0;
	sec_t ret = FUNC0(disc, sectorBuffer);
	FUNC2(sectorBuffer);
	return ret;
}