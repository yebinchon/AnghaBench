#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  union clusterMsgData {int dummy; } clusterMsgData ;
typedef  int uint32_t ;
struct TYPE_14__ {scalar_t__ ptr; } ;
typedef  TYPE_4__ robj ;
typedef  int /*<<< orphan*/  dict ;
typedef  int /*<<< orphan*/  clusterMsgDataQueueOp ;
struct TYPE_11__ {int /*<<< orphan*/  qname; void* qnamelen; void* aux; } ;
struct TYPE_12__ {TYPE_1__ about; } ;
struct TYPE_13__ {TYPE_2__ queueop; } ;
struct TYPE_15__ {void* totlen; TYPE_3__ data; } ;
typedef  TYPE_5__ clusterMsg ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_PAUSE ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 TYPE_5__* FUNC8 (int) ; 

void FUNC9(robj *qname, uint32_t flags, dict *nodes) {
    uint32_t totlen, qnamelen = FUNC5(qname->ptr);
    uint32_t alloclen;
    clusterMsg *hdr;

    FUNC6(LL_VERBOSE,"Sending PAUSE for %s flags=%d, %d nodes",
        (char*)qname->ptr, (int)flags, (int)FUNC2(nodes));

    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += sizeof(clusterMsgDataQueueOp) - 8 + qnamelen;
    alloclen = totlen;
    if (alloclen < (int)sizeof(clusterMsg)) alloclen = sizeof(clusterMsg);
    hdr = FUNC8(alloclen);

    FUNC1(hdr,CLUSTERMSG_TYPE_PAUSE);
    hdr->data.queueop.about.aux = FUNC3(flags);
    hdr->data.queueop.about.qnamelen = FUNC3(qnamelen);
    FUNC4(hdr->data.queueop.about.qname, qname->ptr, qnamelen);
    hdr->totlen = FUNC3(totlen);
    FUNC0(nodes,hdr,totlen);
    FUNC7(hdr);
}