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
 int* card_company ; 
 int /*<<< orphan*/  FUNC2 (int*,char const*,int) ; 
 int FUNC3 (char const*) ; 

s32 FUNC4(const char *company)
{
	u32 level,i;

	FUNC0(level);
	for(i=0;i<2;i++) card_company[i] = 0xff;
	if(company && FUNC3(company)<=2) FUNC2(card_company,company,2) ;
	FUNC1(level);

	return CARD_ERROR_READY;
}