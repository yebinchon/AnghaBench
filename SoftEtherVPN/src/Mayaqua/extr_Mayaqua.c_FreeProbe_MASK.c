#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
struct TYPE_7__ {int Size; } ;
struct TYPE_6__ {int wYear; int wMonth; int wDay; int wHour; int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_2__* probe_buf ; 
 int /*<<< orphan*/  probe_lock ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6()
{
	if (probe_buf->Size >= 1)
	{
		SYSTEMTIME st;
		char filename[MAX_SIZE];

		// Write all to the file
		FUNC4("@probe_log");

		FUNC3(&st);

		FUNC5(filename, sizeof(filename), "@probe_log/%04u%02u%02u_%02u%02u%02u.log",
			st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);

		FUNC1(probe_buf, filename);
	}

	FUNC2(probe_buf);
	FUNC0(probe_lock);
}