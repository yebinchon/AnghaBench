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
typedef  int /*<<< orphan*/  zstats ;
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC2 (char*,int**,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void)
{
	int ret;
	uint64_t zstats[2];
	size_t zstats_size = sizeof(zstats);

	ret = FUNC2("kern.zone_map_size_and_capacity", &zstats, &zstats_size, NULL, 0);
	T_QUIET; FUNC0(ret, "sysctl kern.zone_map_size_and_capacity failed");

	FUNC1("Zone map capacity: %-30lldZone map size: %lld [%lld%% full]", zstats[1], zstats[0], (zstats[0] * 100)/zstats[1]);
}