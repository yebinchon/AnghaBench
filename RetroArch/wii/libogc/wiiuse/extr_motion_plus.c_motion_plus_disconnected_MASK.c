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
struct motion_plus_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct motion_plus_t*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct motion_plus_t* mp)
{
	FUNC0("Motion plus disconnected");
	FUNC1(mp, 0, sizeof(struct motion_plus_t));
}