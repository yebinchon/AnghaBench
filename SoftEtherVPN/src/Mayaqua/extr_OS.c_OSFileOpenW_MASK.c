#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_2__ {void* (* FileOpenW ) (int /*<<< orphan*/ *,int,int) ;} ;

/* Variables and functions */
 TYPE_1__* os ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 

void *FUNC1(wchar_t *name, bool write_mode, bool read_lock)
{
	return os->FileOpenW(name, write_mode, read_lock);
}