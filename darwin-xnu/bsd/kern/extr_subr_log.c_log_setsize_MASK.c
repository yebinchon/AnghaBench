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
struct TYPE_2__ {int msg_size; char* msg_bufc; int msg_bufr; int msg_bufx; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAX_MSG_BSIZE ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 TYPE_1__* msgbufp ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* smsg_bufc ; 

int
FUNC8(int size)
{
	char *new_logdata;
	int new_logsize, new_bufr, new_bufx;
	char *old_logdata;
	int old_logsize, old_bufr, old_bufx;
	int i, count;
	char *p, ch;

	if (size > MAX_MSG_BSIZE)
		return (EINVAL);

	if (size <= 0)
		return (EINVAL);

	new_logsize = size;
	if (!(new_logdata = (char*)FUNC5(size))) {
		FUNC7("log_setsize: unable to allocate memory\n");
		return (ENOMEM);
	}
	FUNC4(new_logdata, new_logsize);

	FUNC0();

	old_logsize = msgbufp->msg_size;
	old_logdata = msgbufp->msg_bufc;
	old_bufr = msgbufp->msg_bufr;
	old_bufx = msgbufp->msg_bufx;

	FUNC1("log_setsize(%d): old_logdata %p old_logsize %d old_bufr %d old_bufx %d\n",
					  size, old_logdata, old_logsize, old_bufr, old_bufx);

	/* start "new_logsize" bytes before the write pointer */
	if (new_logsize <= old_bufx) {
		count = new_logsize;
		p = old_logdata + old_bufx - count;
	} else {
		/*
		 * if new buffer is bigger, copy what we have and let the
		 * bzero above handle the difference
		 */
		count = FUNC3(new_logsize, old_logsize);
		p = old_logdata + old_logsize - (count - old_bufx);
	}
	for (i = 0; i < count; i++) {
		if (p >= old_logdata + old_logsize)
			p = old_logdata;

		ch = *p++;
		new_logdata[i] = ch;
	}

	new_bufx = i;
	if (new_bufx >= new_logsize)
		new_bufx = 0;
	msgbufp->msg_bufx = new_bufx;

	new_bufr = old_bufx - old_bufr; /* how much were we trailing bufx by? */
	if (new_bufr < 0)
		new_bufr += old_logsize;
	new_bufr = new_bufx - new_bufr; /* now relative to oldest data in new buffer */
	if (new_bufr < 0)
		new_bufr += new_logsize;
	msgbufp->msg_bufr = new_bufr;

	msgbufp->msg_size = new_logsize;
	msgbufp->msg_bufc = new_logdata;

	FUNC1("log_setsize(%d): new_logdata %p new_logsize %d new_bufr %d new_bufx %d\n",
					  size, new_logdata, new_logsize, new_bufr, new_bufx);

	FUNC2();

	/* this memory is now dead - clear it so that it compresses better
	   in case of suspend to disk etc. */
	FUNC4(old_logdata, old_logsize);
	if (old_logdata != smsg_bufc) {
		/* dynamic memory that must be freed */
		FUNC6(old_logdata, old_logsize);
	}

	FUNC7("set system log size to %d bytes\n", new_logsize);

	return 0;
}