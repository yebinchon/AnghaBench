#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int8_t ;
struct TYPE_11__ {int /*<<< orphan*/  fq_flowhash; } ;
typedef  TYPE_2__ fq_t ;
struct TYPE_12__ {int /*<<< orphan*/  fqs_ifq; int /*<<< orphan*/ * fqs_flows; } ;
typedef  TYPE_3__ fq_if_t ;
struct TYPE_10__ {int /*<<< orphan*/  fcl_flows_cnt; } ;
struct TYPE_13__ {TYPE_1__ fcl_stat; } ;
typedef  TYPE_4__ fq_if_classq_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flowq ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  fq_hashlink ; 

void
FUNC4(fq_if_t *fqs, fq_if_classq_t *fq_cl, fq_t *fq)
{
	u_int8_t hash_id;
	hash_id = FUNC0(fq->fq_flowhash);
	FUNC2(&fqs->fqs_flows[hash_id], fq, flowq,
	    fq_hashlink);
	fq_cl->fcl_stat.fcl_flows_cnt--;
	FUNC1(fqs->fqs_ifq);
	FUNC3(fq);

}