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
typedef  int /*<<< orphan*/  csh ;

/* Variables and functions */
 size_t counter ; 
 int e_flag ; 
 scalar_t__* list_lines ; 
 int /*<<< orphan*/  mc_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(void **state)
{
	if (e_flag == 1)
		FUNC0((csh *)*state, mc_mode, list_lines[counter] + 3);
	else
		FUNC0((csh *)*state, mc_mode, list_lines[counter]);
}