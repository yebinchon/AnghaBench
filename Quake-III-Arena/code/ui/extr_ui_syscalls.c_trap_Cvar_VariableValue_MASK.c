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
 int /*<<< orphan*/  UI_CVAR_VARIABLEVALUE ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 

float FUNC1( const char *var_name ) {
	int temp;
	temp = FUNC0( UI_CVAR_VARIABLEVALUE, var_name );
	return (*(float*)&temp);
}