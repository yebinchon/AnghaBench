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
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,size_t) ; 

errno_t
FUNC1(mbuf_t *mbuf, size_t len)
{
	/* Must set *mbuf to NULL in failure case */
	*mbuf = FUNC0(*mbuf, len);

	return (*mbuf == NULL ? ENOMEM : 0);
}