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
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;

/* Variables and functions */
 int /*<<< orphan*/  ccv_nnc_no_hint ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

int FUNC1(const ccv_nnc_hint_t hint)
{
	return (FUNC0(&hint, &ccv_nnc_no_hint, sizeof(ccv_nnc_hint_t)) == 0);
}