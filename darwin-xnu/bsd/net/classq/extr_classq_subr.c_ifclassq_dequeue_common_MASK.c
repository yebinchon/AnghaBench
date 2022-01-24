#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int32_t ;
struct ifnet {int dummy; } ;
struct ifclassq {int (* ifcq_dequeue_sc_multi ) (struct ifclassq*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,void**,void**,scalar_t__*,scalar_t__*,int*) ;int (* ifcq_dequeue_multi ) (struct ifclassq*,scalar_t__,scalar_t__,void**,void**,scalar_t__*,scalar_t__*,int*) ;struct ifnet* ifcq_ifp; } ;
typedef  TYPE_2__* mbuf_t ;
typedef  int /*<<< orphan*/  mbuf_svc_class_t ;
typedef  int errno_t ;
typedef  int classq_pkt_type_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/ * m_nextpkt; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct ifclassq*,void*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifclassq*,int /*<<< orphan*/ ,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifclassq*,void*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifclassq*,int /*<<< orphan*/ ,void*,int*) ; 
 scalar_t__ FUNC6 (struct ifclassq*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifclassq*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
#define  QP_MBUF 128 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct ifclassq*,struct ifnet*,void*,int const) ; 
 int FUNC11 (struct ifclassq*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,void**,void**,scalar_t__*,scalar_t__*,int*) ; 
 int FUNC12 (struct ifclassq*,scalar_t__,scalar_t__,void**,void**,scalar_t__*,scalar_t__*,int*) ; 

__attribute__((used)) static errno_t
FUNC13(struct ifclassq *ifq, mbuf_svc_class_t sc,
    u_int32_t pkt_limit, u_int32_t byte_limit, void **head,
    void **tail, u_int32_t *cnt, u_int32_t *len, boolean_t drvmgt,
    classq_pkt_type_t *ptype)
{
	struct ifnet *ifp = ifq->ifcq_ifp;
	u_int32_t i = 0, l = 0, lock_spin = 1 ;
	void **first, *last;

	FUNC9(!drvmgt || FUNC8(sc));

	*ptype = 0;


	if (FUNC6(ifq))
		goto dequeue_loop;

	/*
	 * If the scheduler support dequeueing multiple packets at the
	 * same time, call that one instead.
	 */
	if (drvmgt && ifq->ifcq_dequeue_sc_multi != NULL) {
		int err;

		if (lock_spin)
			FUNC3(ifq);
		else
			FUNC2(ifq);
		err = ifq->ifcq_dequeue_sc_multi(ifq, sc, pkt_limit,
		    byte_limit, head, tail, cnt, len, ptype);
		FUNC7(ifq);

		if (err == 0 && (*head) == NULL)
			err = EAGAIN;
		return (err);
	} else if (ifq->ifcq_dequeue_multi != NULL) {
		int err;

		if (lock_spin)
			FUNC3(ifq);
		else
			FUNC2(ifq);

		err = ifq->ifcq_dequeue_multi(ifq, pkt_limit, byte_limit,
		    head, tail, cnt, len, ptype);
		FUNC7(ifq);

		if (err == 0 && (*head) == NULL)
			err = EAGAIN;
		return (err);
	}

dequeue_loop:
	*head = NULL;
	first = &(*head);
	last = NULL;

	if (lock_spin)
		FUNC3(ifq);
	else
		FUNC2(ifq);

	while (i < pkt_limit && l < byte_limit) {
		classq_pkt_type_t tmp_ptype;
		if (drvmgt) {
			if (FUNC6(ifq))
				FUNC5(ifq, sc, *head, &tmp_ptype);
			else
				FUNC1(ifq, sc, *head, &tmp_ptype);
		} else {
			if (FUNC6(ifq))
				FUNC4(ifq, *head, &tmp_ptype);
			else
				FUNC0(ifq, *head, &tmp_ptype);
		}

		if (*head == NULL)
			break;

		switch (tmp_ptype) {
		case QP_MBUF:
			(*((mbuf_t *)head))->m_nextpkt = NULL;
			last = *head;
			l += (*((mbuf_t *)head))->m_pkthdr.len;
			FUNC10(ifq, ifp, (*head),
			    QP_MBUF);
			head = (void **)&(*((mbuf_t *)head))->m_nextpkt;
			break;


		default:
			FUNC9(0);
			/* NOTREACHED */
		}

		*ptype = tmp_ptype;
		i++;
	}

	FUNC7(ifq);

	if (tail != NULL)
		*tail = last;
	if (cnt != NULL)
		*cnt = i;
	if (len != NULL)
		*len = l;

	return ((*first != NULL) ? 0 : EAGAIN);
}