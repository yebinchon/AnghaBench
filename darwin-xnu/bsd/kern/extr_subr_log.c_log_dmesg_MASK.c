#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int uint32_t ;
typedef  size_t int32_t ;
struct TYPE_2__ {int msg_size; char* msg_bufc; int msg_bufx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 TYPE_1__* msgbufp ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

int
FUNC6(user_addr_t buffer, uint32_t buffersize, int32_t * retval)
{
	uint32_t i;
	uint32_t localbuff_size;
	int error = 0, newl, skip;
	char *localbuff, *p, *copystart, ch;
	size_t copysize;

	FUNC0();
	localbuff_size = (msgbufp->msg_size + 2); /* + '\n' + '\0' */
	FUNC1();

	/* Allocate a temporary non-circular buffer for copyout */
	if (!(localbuff = (char *)FUNC3(localbuff_size))) {
		FUNC5("log_dmesg: unable to allocate memory\n");
		return (ENOMEM);
	}

	/* in between here, the log could become bigger, but that's fine */
	FUNC0();

	/*
	 * The message buffer is circular; start at the write pointer, and
	 * make one loop up to write pointer - 1.
	 */
	p = msgbufp->msg_bufc + msgbufp->msg_bufx;
	for (i = newl = skip = 0; p != msgbufp->msg_bufc + msgbufp->msg_bufx - 1; ++p) {
		if (p >= msgbufp->msg_bufc + msgbufp->msg_size)
			p = msgbufp->msg_bufc;
		ch = *p;
		/* Skip "\n<.*>" syslog sequences. */
		if (skip) {
			if (ch == '>')
				newl = skip = 0;
			continue;
		}
		if (newl && ch == '<') {
			skip = 1;
			continue;
		}
		if (ch == '\0')
			continue;
		newl = (ch == '\n');
		localbuff[i++] = ch;
		/* The original version of this routine contained a buffer
		 * overflow. At the time, a "small" targeted fix was desired
		 * so the change below to check the buffer bounds was made.
		 * TODO: rewrite this needlessly convoluted routine.
		 */
		if (i == (localbuff_size - 2))
			break;
	}
	if (!newl)
		localbuff[i++] = '\n';
	localbuff[i++] = 0;

	if (buffersize >= i) {
		copystart = localbuff;
		copysize = i;
	} else {
		copystart = localbuff + i - buffersize;
		copysize = buffersize;
	}

	FUNC1();

	error = FUNC2(copystart, buffer, copysize);
	if (!error)
		*retval = copysize;

	FUNC4(localbuff, localbuff_size);
	return (error);
}