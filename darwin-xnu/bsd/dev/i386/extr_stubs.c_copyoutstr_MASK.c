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
typedef  int /*<<< orphan*/  user_addr_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (void const*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 
 int FUNC2 (void const*) ; 

int
FUNC3(const void *from, user_addr_t to, size_t maxlen, size_t *lencopied)
{
	size_t	slen;
	size_t	len;
	int	error = 0;

	slen = FUNC2(from) + 1;
	if (slen > maxlen)
		error = ENAMETOOLONG;

	len = FUNC1(maxlen,slen);
	if (FUNC0(from, to, len))
		error = EFAULT;
	*lencopied = len;

	return error;
}