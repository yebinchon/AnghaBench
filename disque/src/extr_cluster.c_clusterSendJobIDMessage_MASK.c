#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * link; } ;
typedef  TYPE_4__ clusterNode ;
struct TYPE_10__ {int /*<<< orphan*/  aux; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_3__ job; } ;
struct TYPE_9__ {TYPE_1__ jobid; } ;
struct TYPE_12__ {int /*<<< orphan*/  totlen; TYPE_2__ data; } ;
typedef  TYPE_5__ clusterMsg ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(int type, clusterNode *node, char *id, int aux) {
    unsigned char buf[sizeof(clusterMsg)];
    clusterMsg *hdr = (clusterMsg*) buf;

    if (node->link == NULL) return; /* This is a best effort message. */
    FUNC0(hdr,type);
    FUNC3(hdr->data.jobid.job.id,id,JOB_ID_LEN);
    hdr->data.jobid.job.aux = FUNC2(aux);
    FUNC1(node->link,buf,FUNC4(hdr->totlen));
}