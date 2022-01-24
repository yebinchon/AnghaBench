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
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ **,int) ; 

errno_t
FUNC5(mbuf_t chain, size_t offset, size_t *subchain_length, mbuf_t *subchain, mbuf_t *tail, int join)
{
	size_t length = *subchain_length ? *subchain_length : ~0;
	size_t len;
	mbuf_t mb, nmb;
	errno_t error;

	if (tail == NULL)
		tail = &nmb;
	*tail = NULL;
	*subchain = NULL;

	for (len = offset, mb = chain; mb && len > FUNC2(mb); mb = FUNC3(mb))
			len -= FUNC2(mb);

	/* if we don't have offset bytes just return */
	if (mb == NULL)
		return (0);

	error = FUNC4(mb, len, subchain, join);
	if (error)
		return (error);

	FUNC0(subchain != NULL && *subchain != NULL);
	FUNC0(offset == 0 ? mb == *subchain : 1);

	len = FUNC1(*subchain, 0);
	length =  (length > len) ? len : length;
	*subchain_length = length;

	for (len = length, mb = *subchain; mb && len > FUNC2(mb); mb = FUNC3(mb))
		len -= FUNC2(mb);

	error = FUNC4(mb, len, tail, join);

	return (error);
}