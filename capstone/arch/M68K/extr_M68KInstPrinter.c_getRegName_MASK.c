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
typedef  scalar_t__ m68k_reg ;

/* Variables and functions */
 char const** s_reg_names ; 

__attribute__((used)) static const char* FUNC0(m68k_reg reg)
{
	return s_reg_names[(int)reg];
}