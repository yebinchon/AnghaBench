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
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  dvdcmdblk ;
typedef  int /*<<< orphan*/  dvdcbcallback ;

/* Variables and functions */
 int /*<<< orphan*/  DVD_RESETHARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __dvd_mountusrcb ; 
 int /*<<< orphan*/  callback ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

s32 FUNC3(dvdcmdblk *block,dvdcbcallback cb)
{
	__dvd_mountusrcb = cb;
	FUNC0(DVD_RESETHARD);
	FUNC2(1150*1000);
	return FUNC1(block,callback);
}