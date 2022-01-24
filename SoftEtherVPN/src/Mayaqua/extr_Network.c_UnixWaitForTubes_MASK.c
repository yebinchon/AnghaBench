#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int UINT ;
struct TYPE_5__ {TYPE_1__* SockEvent; } ;
struct TYPE_4__ {int pipe_read; scalar_t__ current_pipe_data; } ;
typedef  TYPE_2__ TUBE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int* FUNC2 (int) ; 
 int FUNC3 (int,char*,int) ; 

void FUNC4(TUBE **tubes, UINT num, UINT timeout)
{
	int *fds;
	UINT i;
	char tmp[MAX_SIZE];
	bool any_of_tubes_are_readable = false;

	fds = FUNC2(sizeof(int) * num);

	for (i = 0;i < num;i++)
	{
		fds[i] = tubes[i]->SockEvent->pipe_read;

		if (tubes[i]->SockEvent->current_pipe_data != 0)
		{
			any_of_tubes_are_readable = true;
		}
	}

	if (any_of_tubes_are_readable == false)
	{
		FUNC1(num, fds, 0, NULL, timeout);
	}

	for (i = 0;i < num;i++)
	{
		int fd = fds[i];
		int readret;

		tubes[i]->SockEvent->current_pipe_data = 0;

		do
		{
			readret = FUNC3(fd, tmp, sizeof(tmp));
		}
		while (readret >= 1);
	}

	FUNC0(fds);
}