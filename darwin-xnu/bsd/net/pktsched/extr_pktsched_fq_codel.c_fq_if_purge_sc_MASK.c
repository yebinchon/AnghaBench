#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fq_t ;
struct TYPE_7__ {int /*<<< orphan*/  fqs_ifq; } ;
typedef  TYPE_1__ fq_if_t ;
struct TYPE_8__ {scalar_t__ flow; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packets; int /*<<< orphan*/  sc; } ;
typedef  TYPE_2__ cqrq_purge_sc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QP_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(fq_if_t *fqs, cqrq_purge_sc_t *req)
{
	fq_t *fq;

	FUNC0(fqs->fqs_ifq);
	req->packets = req->bytes = 0;
	FUNC1(req->flow != 0);

	/* packet type is needed only if we want to create a flow queue */
	fq = FUNC2(fqs, req->flow, req->sc, 0, FALSE, QP_INVALID);

	if (fq != NULL)
		FUNC3(fqs, fq, &req->packets, &req->bytes);
}