#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  st ;
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT ;
struct TYPE_4__ {int wYear; int wMonth; int wDay; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

UINT64 FUNC3(char *str)
{
	UINT v;
	SYSTEMTIME st;
	// Validate arguments
	if (str == NULL)
	{
		return 0;
	}

	v = FUNC1(str);

	FUNC2(&st, sizeof(st));

	st.wYear = (v % 100000000) / 10000;
	st.wMonth = (v % 10000) / 100;
	st.wDay = v % 100;

	return FUNC0(&st);
}