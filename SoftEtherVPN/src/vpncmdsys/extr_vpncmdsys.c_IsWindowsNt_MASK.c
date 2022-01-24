#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  info ;
struct TYPE_4__ {int dwOSVersionInfoSize; scalar_t__ dwPlatformId; } ;
typedef  TYPE_1__ OSVERSIONINFO ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ VER_PLATFORM_WIN32_NT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

bool FUNC2()
{
	OSVERSIONINFO info;

	FUNC1(&info, sizeof(info));
	info.dwOSVersionInfoSize = sizeof(info);

	if (FUNC0(&info) == false)
	{
		return false;
	}

	if (info.dwPlatformId == VER_PLATFORM_WIN32_NT)
	{
		return true;
	}

	return false;
}