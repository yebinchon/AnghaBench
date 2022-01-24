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
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int SISR_NORESPONSE ; 
 int SI_ERROR_NO_RESPONSE ; 
 int SI_ERR_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* _siReg ; 
 int* si_type ; 

u32 FUNC2(s32 chan)
{
	u32 level,sisr;

	FUNC0(level);
	sisr = (_siReg[14]>>((3-chan)<<3));
	if(sisr&SISR_NORESPONSE && !(si_type[chan]&SI_ERR_BUSY)) si_type[chan] = SI_ERROR_NO_RESPONSE;
	FUNC1(level);
	return sisr;
}