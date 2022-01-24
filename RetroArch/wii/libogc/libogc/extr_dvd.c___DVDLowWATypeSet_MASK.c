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
typedef  void* u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* __dvd_workaround ; 
 void* __dvd_workaroundseek ; 

__attribute__((used)) static void FUNC2(u32 workaround,u32 workaroundseek)
{
	u32 level;

	FUNC0(level);
	__dvd_workaround = workaround;
	__dvd_workaroundseek = workaroundseek;
	FUNC1(level);
}