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
struct SN76496 {int* Register; int SampleRate; int* Output; int RNG; int /*<<< orphan*/  UpdateStep; int /*<<< orphan*/ * Count; int /*<<< orphan*/ * Period; scalar_t__ LastRegister; scalar_t__* Volume; } ;

/* Variables and functions */
 int NG_PRESET ; 
 int /*<<< orphan*/  FUNC0 (struct SN76496*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct SN76496*,int /*<<< orphan*/ ) ; 
 struct SN76496 ono_sn ; 
 int* sn76496_regs ; 

int FUNC2(int clock,int sample_rate)
{
	struct SN76496 *R = &ono_sn;
	int i;

	//R->Channel = stream_create(0,1, sample_rate,R,SN76496Update);
	sn76496_regs = R->Register;

	R->SampleRate = sample_rate;
	FUNC0(R,clock);

	for (i = 0;i < 4;i++) R->Volume[i] = 0;

	R->LastRegister = 0;
	for (i = 0;i < 8;i+=2)
	{
		R->Register[i] = 0;
		R->Register[i + 1] = 0x0f;	/* volume = 0 */
	}

	for (i = 0;i < 4;i++)
	{
		R->Output[i] = 0;
		R->Period[i] = R->Count[i] = R->UpdateStep;
	}
	R->RNG = NG_PRESET;
	R->Output[3] = R->RNG & 1;

	// added
	FUNC1(R, 0);

	return 0;
}