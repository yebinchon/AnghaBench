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

/* Variables and functions */
 int FUNC0 (char*,size_t) ; 
 int ull_hash_buckets ; 

__attribute__((used)) static __inline__ uint32_t
FUNC1(char *key, size_t length)
{
	uint32_t hash = FUNC0(key, length);

	hash &= (ull_hash_buckets - 1);

	return hash;
}