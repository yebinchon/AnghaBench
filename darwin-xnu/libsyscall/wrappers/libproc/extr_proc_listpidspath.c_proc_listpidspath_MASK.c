#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* fdOpenInfoRef ;
struct TYPE_6__ {int pids_size; int* pids; int pids_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  errno ; 
 int* FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int* FUNC6 (int*,int) ; 

int
FUNC7(uint32_t	type,
		  uint32_t	typeinfo,
		  const char	*path,
		  uint32_t	pathflags,
		  void		*buffer,
		  int		buffersize)
{
	int		buf_used;
	int		*buf_next	= (int *)buffer;
	int		i;
	fdOpenInfoRef	info;
	int		status		= -1;

	if (buffer == NULL) {
		// if this is a sizing request
		return FUNC5(type, typeinfo, NULL, 0);
	}

	buffersize -= (buffersize % sizeof(int)); // make whole number of ints
	if (buffersize < sizeof(int)) {
		// if we can't even return a single PID
		errno = ENOMEM;
		return -1;
	}

	// init
	info = FUNC1(path, pathflags);
	if (info == NULL) {
		return -1;
	}

	// get list of processes
	buf_used = FUNC5(type, typeinfo, NULL, 0);
	if (buf_used <= 0) {
		goto done;
	}

	while (1) {
		if (buf_used > info->pids_size) {
			// if we need to allocate [more] space
			while (buf_used > info->pids_size) {
				info->pids_size += (sizeof(int) * 32);
			}

			if (info->pids == NULL) {
				info->pids = FUNC4(info->pids_size);
			} else {
				info->pids = FUNC6(info->pids, info->pids_size);
			}
			if (info->pids == NULL) {
				goto done;
			}
		}

		buf_used = FUNC5(type, typeinfo, info->pids, (int)info->pids_size);
		if (buf_used <= 0) {
			goto done;
		}

		if ((buf_used + sizeof(int)) >= info->pids_size) {
			// if not enough room in the buffer for an extra pid
			buf_used = (int)(info->pids_size + sizeof(int));
			continue;
		}

		info->pids_count = buf_used / sizeof(int);
		break;
	}

	// iterate through each process
	buf_used = 0;
	for (i = info->pids_count - 1; i >= 0; i--) {
		int	pid;
		int	pstatus;

		pid = info->pids[i];
		if (pid == 0) {
			continue;
		}

		pstatus = FUNC2(info, pid);
		if (pstatus != 1) {
			// if not a match
			continue;
		}

		*buf_next++ = pid;
		buf_used += sizeof(int);

		if (buf_used >= buffersize) {
			// if we have filled the buffer
			break;
		}
	}

	if (buf_used >= buffersize) {
		// if we have filled the buffer
		status = buf_used;
		goto done;
	}

	// do a more expensive search if we still have buffer space
	for (i = info->pids_count - 1; i >= 0; i--) {
		int	pid;
		int	pstatus;

		pid = info->pids[i];
		if (pid == 0) {
			continue;
		}

		pstatus = FUNC3(info, pid);
		if (pstatus != 1) {
			// if not a match
			continue;
		}

		*buf_next++ = pid;
		buf_used += sizeof(int);

		if (buf_used >= buffersize) {
			// if we have filled the buffer
			break;
		}
	}

	status = buf_used;

    done :

	// cleanup
	FUNC0(info);

	return status;
}