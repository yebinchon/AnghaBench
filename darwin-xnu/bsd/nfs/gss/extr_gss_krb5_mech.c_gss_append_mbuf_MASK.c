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
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  MBUF_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

errno_t
FUNC3(mbuf_t chain, uint8_t *bytes, size_t size)
{
	size_t len = 0;
	mbuf_t mb;

	if (chain == NULL)
		return (EINVAL);

	for (mb = chain; mb; mb = FUNC2(mb))
		len += FUNC1(mb);

	return (FUNC0(chain, len, size, bytes, MBUF_WAITOK));
}