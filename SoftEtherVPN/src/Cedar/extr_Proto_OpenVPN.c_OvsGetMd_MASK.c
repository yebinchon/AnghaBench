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
typedef  int /*<<< orphan*/  MD ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 char* OPENVPN_DEFAULT_MD ; 

MD *FUNC2(char *name)
{
	MD *m = NULL;

	if (FUNC0(name) == false)
	{
		m = FUNC1(name);
	}

	if (m == NULL)
	{
		m = FUNC1(OPENVPN_DEFAULT_MD);
	}

	return m;
}