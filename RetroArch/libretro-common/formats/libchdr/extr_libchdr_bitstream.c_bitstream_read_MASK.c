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
typedef  int /*<<< orphan*/  uint32_t ;
struct bitstream {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitstream*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bitstream*,int) ; 

uint32_t FUNC2(struct bitstream* bitstream, int numbits)
{
	uint32_t result = FUNC0(bitstream, numbits);
	FUNC1(bitstream, numbits);
	return result;
}