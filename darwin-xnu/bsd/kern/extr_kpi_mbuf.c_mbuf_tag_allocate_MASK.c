#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct m_tag {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_tag_type_t ;
typedef  scalar_t__ mbuf_tag_id_t ;
typedef  TYPE_1__* mbuf_t ;
typedef  scalar_t__ mbuf_how_t ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_6__ {int m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int M_PKTHDR ; 
 scalar_t__ M_WAITOK ; 
 int /*<<< orphan*/  NSI_MBUF_TAG ; 
 struct m_tag* FUNC0 (scalar_t__,int /*<<< orphan*/ ,size_t,scalar_t__,TYPE_1__*) ; 
 struct m_tag* FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct m_tag*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

errno_t
FUNC4(
	mbuf_t			mbuf,
	mbuf_tag_id_t	id,
	mbuf_tag_type_t	type,
	size_t			length,
	mbuf_how_t		how,
	void**			data_p)
{
	struct m_tag *tag;
	u_int32_t mtag_id_first, mtag_id_last;

	if (data_p != NULL)
		*data_p = NULL;

	/* Sanity check parameters */
	(void) FUNC3(&mtag_id_first, &mtag_id_last,
	    NSI_MBUF_TAG);
	if (mbuf == NULL || (mbuf->m_flags & M_PKTHDR) == 0 ||
	    id < mtag_id_first || id > mtag_id_last || length < 1 ||
	    (length & 0xffff0000) != 0 || data_p == NULL) {
		return (EINVAL);
	}

	/* Make sure this mtag hasn't already been allocated */
	tag = FUNC1(mbuf, id, type, NULL);
	if (tag != NULL) {
		return (EEXIST);
	}

	/* Allocate an mtag */
	tag = FUNC0(id, type, length, how, mbuf);
	if (tag == NULL) {
		return (how == M_WAITOK ? ENOMEM : EWOULDBLOCK);
	}

	/* Attach the mtag and set *data_p */
	FUNC2(mbuf, tag);
	*data_p = tag + 1;

	return (0);
}