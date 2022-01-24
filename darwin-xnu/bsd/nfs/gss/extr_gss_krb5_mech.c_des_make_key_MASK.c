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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int) ; 

__attribute__((used)) static void
FUNC2(const uint8_t rawkey[7], uint8_t deskey[8])
{
	uint8_t val = 0;

	FUNC1(deskey, rawkey, 7);
	for (int i = 0; i < 7; i++)
		val |= ((deskey[i] & 1) << (i+1));
	deskey[7] = val;
	FUNC0(deskey, 8);
}