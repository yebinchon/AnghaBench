#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int lastjob; int* writebuff0; int* writebuff1; int /*<<< orphan*/  loopc; int /*<<< orphan*/  rate; int /*<<< orphan*/  baseclock; } ;
struct TYPE_4__ {int* REGS; } ;
struct TYPE_5__ {int* ym_buffer; void* mp3dec; TYPE_1__ ym2612; } ;

/* Variables and functions */
#define  JOB940_INITALL 137 
#define  JOB940_INVALIDATE_DCACHE 136 
#define  JOB940_MP3DECODE 135 
#define  JOB940_MP3RESET 134 
#define  JOB940_PICOSTATELOAD 133 
#define  JOB940_PICOSTATELOAD2 132 
#define  JOB940_PICOSTATELOAD2_PREP 131 
#define  JOB940_PICOSTATESAVE2 130 
#define  JOB940_YM2612RESETCHIP 129 
#define  JOB940_YM2612UPDATEONE 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_3__* shared_ctl ; 
 TYPE_2__* shared_data ; 
 int FUNC12 (int) ; 
 TYPE_1__* ym2612_940 ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int*) ; 

void FUNC15(void)
{
	int *ym_buffer = shared_data->ym_buffer;
	int job = 0;
	ym2612_940 = &shared_data->ym2612;


	for (;;)
	{
		job = FUNC12(job);

		shared_ctl->lastjob = job;

		switch (job)
		{
			case JOB940_INITALL:
				/* ym2612 */
				shared_ctl->writebuff0[0] = shared_ctl->writebuff1[0] = 0xffff;
				FUNC2(shared_ctl->baseclock, shared_ctl->rate);
				/* Helix mp3 decoder */
				shared_data->mp3dec = FUNC1();
				break;

			case JOB940_INVALIDATE_DCACHE:
				FUNC10();
				FUNC9();
				break;

			case JOB940_YM2612RESETCHIP:
				FUNC6();
				break;

			case JOB940_PICOSTATELOAD:
				FUNC4();
				break;

			case JOB940_PICOSTATESAVE2:
				FUNC5(0, 0);
				FUNC7(shared_ctl->writebuff0, ym2612_940->REGS, 0x200);
				break;

			case JOB940_PICOSTATELOAD2_PREP:
				FUNC13();
				break;

			case JOB940_PICOSTATELOAD2:
				FUNC7(ym2612_940->REGS, shared_ctl->writebuff0, 0x200);
				FUNC3(0, 0);
				break;

			case JOB940_YM2612UPDATEONE:
				FUNC14(ym_buffer);
				break;

			case JOB940_MP3DECODE:
				FUNC11();
				break;

			case JOB940_MP3RESET:
				if (shared_data->mp3dec) FUNC0(shared_data->mp3dec);
				shared_data->mp3dec = FUNC1();
				break;
		}

		shared_ctl->loopc++;
		FUNC8();
	}
}