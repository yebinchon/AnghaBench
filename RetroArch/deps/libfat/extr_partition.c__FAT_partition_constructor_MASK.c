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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sec_t ;
typedef  int /*<<< orphan*/  PARTITION ;
typedef  int /*<<< orphan*/  DISC_INTERFACE ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_SECTOR_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

PARTITION* FUNC3 (const DISC_INTERFACE* disc, uint32_t cacheSize, uint32_t sectorsPerPage, sec_t startSector)
{
   PARTITION *ret        = NULL;
	uint8_t *sectorBuffer = (uint8_t*) FUNC0(MAX_SECTOR_SIZE);
	if (!sectorBuffer)
      return NULL;

	ret = FUNC2(disc, cacheSize,
			sectorsPerPage, startSector, sectorBuffer);
	FUNC1(sectorBuffer);
	return ret;
}