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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int ts_htable_buckets ; 

__attribute__((used)) static inline uint32_t 
FUNC1(uintptr_t proprietor)
{
	char *key = (char *)&proprietor;
	uint32_t hash = FUNC0(key, sizeof(key));
	hash &= (ts_htable_buckets - 1);
	return hash;
}