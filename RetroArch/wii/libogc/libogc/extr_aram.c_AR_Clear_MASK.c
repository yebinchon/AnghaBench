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

/* Variables and functions */
#define  AR_ARAMEXPANSION 130 
#define  AR_ARAMINTALL 129 
#define  AR_ARAMINTUSER 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int __ARExpansionSize ; 
 int __ARInternalSize ; 

void FUNC1(u32 flag)
{
	switch(flag) {
		case AR_ARAMINTALL:
			if(__ARInternalSize)
				FUNC0(0,__ARInternalSize);
			break;
		case AR_ARAMINTUSER:
			if(__ARInternalSize)
				FUNC0(0x4000,__ARInternalSize-0x4000);
			break;
		case AR_ARAMEXPANSION:
			if(__ARInternalSize && __ARExpansionSize)
				FUNC0(__ARInternalSize,__ARExpansionSize);
			break;
		default:
			break;
	}
}