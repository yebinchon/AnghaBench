#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; int use_asm; } ;
typedef  TYPE_1__ FLAC__CPUInfo ;

/* Variables and functions */
#define  FLAC__CPUINFO_TYPE_IA32 129 
 int FLAC__CPUINFO_TYPE_UNKNOWN ; 
#define  FLAC__CPUINFO_TYPE_X86_64 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3 (FLAC__CPUInfo *info)
{
	FUNC1(info, 0, sizeof(*info));

#ifdef FLAC__CPU_IA32
	info->type = FLAC__CPUINFO_TYPE_IA32;
#elif defined FLAC__CPU_X86_64
	info->type = FLAC__CPUINFO_TYPE_X86_64;
#else
	info->type = FLAC__CPUINFO_TYPE_UNKNOWN;
	info->use_asm = false;
#endif

	switch (info->type) {
	case FLAC__CPUINFO_TYPE_IA32:
		FUNC0 (info);
		break;
	case FLAC__CPUINFO_TYPE_X86_64:
		FUNC2 (info);
		break;
	default:
		info->use_asm = false;
		break;
	}
}