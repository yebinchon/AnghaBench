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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  MBUF_WAITOK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

errno_t
FUNC8(mbuf_t *chain, uint8_t *bytes, size_t size)
{
	uint8_t *data = FUNC0(*chain);
	size_t leading = FUNC1(*chain);
	size_t trailing = FUNC5(*chain);
	size_t mlen = FUNC2(*chain);
	errno_t error;

	if (size > leading && size <= leading + trailing) {
		data = FUNC7(data + size - leading, data, mlen);
		FUNC4(*chain, data, mlen);
	}

	error = FUNC3(chain, size, MBUF_WAITOK);
	if (error)
		return (error);
	data = FUNC0(*chain);
	FUNC6(data, bytes, size);

	return (0);
}