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
 scalar_t__ EINVAL ; 
 int MBUF_PKTHDR ; 
 int /*<<< orphan*/  MBUF_WAITOK ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static errno_t
FUNC6(mbuf_t mb, size_t offset, mbuf_t *nmb, int join)
{
	errno_t error;

	*nmb = mb;
	/* We don't have an mbuf or we're alread on an mbuf boundary */
	if (mb == NULL || offset == 0)
		return (0);

	/* If the mbuf length is offset then the next mbuf is the one we want */
	if (FUNC1(mb) == offset) {
		*nmb = FUNC2(mb);
		if (!join)
			FUNC4(mb, NULL);
		return (0);
	}

	if (offset > FUNC1(mb))
		return (EINVAL);

	error = FUNC5(mb, offset, MBUF_WAITOK, nmb);
	if (error)
		return (error);

	if (FUNC0(*nmb) & MBUF_PKTHDR) {
		/* We don't want to copy the pkthdr. mbuf_split does that. */
		error = FUNC3(*nmb, ~MBUF_PKTHDR, MBUF_PKTHDR);
	}

	if (join)
		/* Join the chain again */
		FUNC4(mb, *nmb);

	return (0);
}