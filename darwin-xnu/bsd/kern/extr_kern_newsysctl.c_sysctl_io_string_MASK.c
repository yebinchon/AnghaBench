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
struct sysctl_req {int oldlen; size_t newlen; int /*<<< orphan*/  newptr; scalar_t__ oldptr; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int FUNC0 (struct sysctl_req*,char*,size_t) ; 
 int FUNC1 (struct sysctl_req*,char*,int) ; 
 int FUNC2 (char*) ; 

int
FUNC3(struct sysctl_req *req, char *pValue, size_t valueSize, int trunc, int *changed)
{
	int error;

	if (changed) *changed = 0;

	if (trunc && req->oldptr && req->oldlen && (req->oldlen<FUNC2(pValue) + 1)) {
		/* If trunc != 0, if you give it a too small (but larger than
		 * 0 bytes) buffer, instead of returning ENOMEM, it truncates the
		 * returned string to the buffer size.  This preserves the semantics
		 * of some library routines implemented via sysctl, which truncate
		 * their returned data, rather than simply returning an error. The
		 * returned string is always NUL terminated. */
		error = FUNC1(req, pValue, req->oldlen-1);
		if (!error) {
			char c = 0;
			error = FUNC1(req, &c, 1);
		}
	} else {
		/* Copy string out */
		error = FUNC1(req, pValue, FUNC2(pValue) + 1);
	}

	/* error or no new value */
	if (error || !req->newptr)
		return(error);

	/* attempt to set read-only value */
	if (valueSize == 0)
		return(EPERM);

	/* make sure there's room for the new string */
	if (req->newlen >= valueSize)
		return(EINVAL);

	/* copy the string in and force NUL termination */
	error = FUNC0(req, pValue, req->newlen);
	pValue[req->newlen] = '\0';

	if (!error && changed)
		*changed = 1;
	return(error);
}