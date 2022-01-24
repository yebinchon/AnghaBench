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
typedef  int /*<<< orphan*/  mbuf_how_t ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOTSUP ; 
 size_t M16KCLBYTES ; 
 size_t MBIGCLBYTES ; 
 size_t MCLBYTES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ njcl ; 

errno_t
FUNC3(mbuf_how_t how, size_t *size, caddr_t *addr)
{
	if (size == NULL || *size == 0 || addr == NULL)
		return (EINVAL);

	*addr = NULL;

	/* Jumbo cluster pool not available? */
	if (*size > MBIGCLBYTES && njcl == 0)
		return (ENOTSUP);

	if (*size <= MCLBYTES && (*addr = FUNC2(how)) != NULL)
		*size = MCLBYTES;
	else if (*size > MCLBYTES && *size <= MBIGCLBYTES &&
	    (*addr = FUNC1(how)) != NULL)
		*size = MBIGCLBYTES;
	else if (*size > MBIGCLBYTES && *size <= M16KCLBYTES &&
	    (*addr = FUNC0(how)) != NULL)
		*size = M16KCLBYTES;
	else
		*size = 0;

	if (*addr == NULL)
		return (ENOMEM);

	return (0);
}