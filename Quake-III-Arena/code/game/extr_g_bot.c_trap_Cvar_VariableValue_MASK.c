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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 float FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

float FUNC2( const char *var_name ) {
	char buf[128];

	FUNC1(var_name, buf, sizeof(buf));
	return FUNC0(buf);
}