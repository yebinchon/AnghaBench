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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 size_t AI_CONTROL ; 
 int /*<<< orphan*/  AI_DMAFR ; 
 scalar_t__ AI_SAMPLERATE_32KHZ ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * _aiReg ; 

void FUNC4(u8 rate)
{
	u32 level;

	if(FUNC0()!=rate) {
		_aiReg[AI_CONTROL] &= ~AI_DMAFR;
		if(rate==AI_SAMPLERATE_32KHZ) {
			FUNC1(level);
			FUNC3();
			_aiReg[AI_CONTROL] |= AI_DMAFR;
			FUNC2(level);
		}
	}
}