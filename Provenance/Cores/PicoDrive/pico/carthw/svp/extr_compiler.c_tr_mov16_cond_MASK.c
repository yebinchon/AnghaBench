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

/* Variables and functions */
 int /*<<< orphan*/  A_OP_MOV ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC1(int cond, int r, int val)
{
	FUNC0(cond, 0, A_OP_MOV, r, val);
	hostreg_r[r] = -1;
}