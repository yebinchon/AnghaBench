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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  MBUF_TYPE_DATA ; 
 int /*<<< orphan*/  MBUF_WAITOK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC5(mbuf_t *mb, uint32_t value)
{
	int error;
	uint32_t *data;

#if 0
	data = mbuf_data(*mb);
	/*
	 * If a wap token comes back and is not aligned
	 * get a new buffer (which should be aligned) to put the
	 * length in.
	 */
	if ((uintptr_t)data & 0x3) {
		mbuf_t nmb;

		error = mbuf_get(MBUF_WAITOK, MBUF_TYPE_DATA, &nmb);
		if (error)
			return (error);
		mbuf_setnext(nmb, *mb);
		*mb = nmb;
	}
#endif
	error = FUNC2(mb, sizeof(uint32_t), MBUF_WAITOK);
	if (error)
		return (error);

	data = FUNC0(*mb);
	*data = FUNC4(value);

	return (0);
}