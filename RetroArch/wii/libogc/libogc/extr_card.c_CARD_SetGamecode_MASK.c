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
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_ERROR_READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int* card_gamecode ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*,int) ; 
 int FUNC3 (char const*) ; 

s32 FUNC4(const char *gamecode)
{
	u32 level,i;

	FUNC0(level);
	for(i=0;i<4;i++) card_gamecode[i] = 0xff;
	if(gamecode && FUNC3(gamecode)<=4) FUNC2(card_gamecode,gamecode,4) ;
	FUNC1(level);

	return CARD_ERROR_READY;
}