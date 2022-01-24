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
typedef  scalar_t__ u32 ;
typedef  int s64 ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  dvdcallbacklow ;

/* Variables and functions */
 scalar_t__ DVD_DI_START ; 
 scalar_t__ DVD_FWSETOFFSET ; 
 int /*<<< orphan*/  __dvd_callback ; 
 scalar_t__ __dvd_stopnextint ; 
 scalar_t__* _diReg ; 

s32 FUNC0(s64 offset,dvdcallbacklow cb)
{
	__dvd_stopnextint = 0;
	__dvd_callback = cb;

	_diReg[2] = DVD_FWSETOFFSET;
	_diReg[3] = (u32)(offset>>2);
	_diReg[4] = 0;
	_diReg[7] = DVD_DI_START;

	return 1;
}