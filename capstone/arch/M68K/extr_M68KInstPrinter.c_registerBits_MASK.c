#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int register_bits; } ;
typedef  TYPE_1__ cs_m68k_op ;
typedef  int /*<<< orphan*/  SStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,char*) ; 

__attribute__((used)) static void FUNC2(SStream* O, const cs_m68k_op* op)
{
	char buffer[128];
	unsigned int data = op->register_bits;

	buffer[0] = 0;

	if (!data) {
		FUNC0(O, "%s", "#$0");
		return;
	}

	FUNC1(buffer, data & 0xff, "d");
	FUNC1(buffer, (data >> 8) & 0xff, "a");
	FUNC1(buffer, (data >> 16) & 0xff, "fp");

	FUNC0(O, "%s", buffer);
}