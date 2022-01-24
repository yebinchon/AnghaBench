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
typedef  int /*<<< orphan*/  dvdcmdblk ;

/* Variables and functions */
 int DVD_DISKIDSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void (*) (int,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void (*) (int,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  __dvd_diskID ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __dvd_tmpid0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void FUNC4(s32 result,dvdcmdblk *block)
{
	if(result==0x00) {
		FUNC0(block,&__dvd_tmpid0,callback);
		return;
	}
	else if(result>=DVD_DISKIDSIZE) {
		FUNC3(__dvd_diskID,&__dvd_tmpid0,DVD_DISKIDSIZE);
	} else if(result==-4) {
		FUNC1(block,callback);
		return;
	}
	if(&__dvd_mountusrcb) FUNC2(result,block);
}