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
typedef  int s32 ;
typedef  int /*<<< orphan*/  dvdcallbacklow ;

/* Variables and functions */
 int /*<<< orphan*/  __dvd_finalsudcb ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

s32 FUNC1(dvdcallbacklow cb)
{
	__dvd_finalsudcb = cb;
	FUNC0(1);

	return 1;
}