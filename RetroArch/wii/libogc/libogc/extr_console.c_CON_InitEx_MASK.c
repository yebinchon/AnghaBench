#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int s32 ;
struct TYPE_3__ {int fbWidth; } ;
typedef  TYPE_1__ GXRModeObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VI_DISPLAY_PIX_SZ ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int,int,int,int,int) ; 
 scalar_t__ _console_buffer ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

s32 FUNC4(GXRModeObj *rmode, s32 conXOrigin,s32 conYOrigin,s32 conWidth,s32 conHeight)
{
	FUNC0(NULL);
	if(_console_buffer)
		FUNC2(_console_buffer);

	_console_buffer = FUNC3(conWidth*conHeight*VI_DISPLAY_PIX_SZ);
	if(!_console_buffer) return -1;

	FUNC1(_console_buffer,conXOrigin,conYOrigin,rmode->fbWidth*VI_DISPLAY_PIX_SZ,conWidth,conHeight,conWidth*VI_DISPLAY_PIX_SZ);

	return 0;
}