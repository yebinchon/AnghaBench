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
struct TYPE_3__ {int /*<<< orphan*/  (* write ) (TYPE_1__*,char*,int) ;} ;

/* Variables and functions */
 TYPE_1__* current_device ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 

__attribute__((used)) static void FUNC1(char ch)
{
	current_device->write(current_device,&ch,1);
}