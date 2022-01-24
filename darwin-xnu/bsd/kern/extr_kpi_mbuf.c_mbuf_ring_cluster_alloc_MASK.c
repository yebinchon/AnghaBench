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
typedef  int /*<<< orphan*/  mbuf_type_t ;
typedef  int /*<<< orphan*/ * mbuf_t ;
typedef  int /*<<< orphan*/  mbuf_how_t ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void (*) (caddr_t,u_int,caddr_t),size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 

errno_t
FUNC3(mbuf_how_t how, mbuf_type_t type, mbuf_t *mbuf,
    void (*extfree)(caddr_t, u_int, caddr_t), size_t *size)
{
	caddr_t extbuf = NULL;
	errno_t err;

	if (mbuf == NULL || extfree == NULL || size == NULL || *size == 0)
		return (EINVAL);

	if ((err = FUNC1(how, size, &extbuf)) != 0)
		return (err);

	if ((*mbuf = FUNC0(*mbuf, type, extbuf,
	    extfree, *size, NULL, how, 1)) == NULL) {
		FUNC2(extbuf, *size);
		return (ENOMEM);
	}

	return (0);
}