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
typedef  union clusterMsgData {int dummy; } clusterMsgData ;
typedef  int uint32_t ;
typedef  unsigned char* sds ;
typedef  int /*<<< orphan*/  job ;
struct TYPE_11__ {int /*<<< orphan*/  link; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ clusterNode ;
typedef  int /*<<< orphan*/  clusterMsgDataJob ;
struct TYPE_8__ {unsigned char* jobs_data; void* datasize; void* numjobs; } ;
struct TYPE_9__ {TYPE_1__ serialized; } ;
struct TYPE_10__ {TYPE_2__ jobs; } ;
struct TYPE_12__ {TYPE_3__ data; void* totlen; } ;
typedef  TYPE_5__ clusterMsg ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_YOURJOBS ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  SER_MESSAGE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 unsigned char* FUNC10 (int) ; 

void FUNC11(clusterNode *node, job **jobs, uint32_t count) {
    unsigned char buf[sizeof(clusterMsg)], *payload;
    clusterMsg *hdr = (clusterMsg*) buf;
    uint32_t totlen, j;

    if (!node->link) return;

    FUNC8(LL_VERBOSE,"Sending %d jobs to %.40s", (int)count,node->name);

    totlen = sizeof(clusterMsg)-sizeof(union clusterMsgData);
    totlen += sizeof(clusterMsgDataJob) -
              sizeof(hdr->data.jobs.serialized.jobs_data);

    sds serialized = FUNC4();
    for (j = 0; j < count; j++)
        serialized = FUNC7(serialized,jobs[j],SER_MESSAGE);
    totlen += FUNC6(serialized);

    FUNC0(hdr,CLUSTERMSG_TYPE_YOURJOBS);
    hdr->data.jobs.serialized.numjobs = FUNC2(count);
    hdr->data.jobs.serialized.datasize = FUNC2(FUNC6(serialized));
    hdr->totlen = FUNC2(totlen);

    if (totlen < sizeof(buf)) {
        payload = buf;
    } else {
        payload = FUNC10(totlen);
        FUNC3(payload,buf,sizeof(clusterMsg));
        hdr = (clusterMsg*) payload;
    }
    FUNC3(hdr->data.jobs.serialized.jobs_data,serialized,FUNC6(serialized));
    FUNC5(serialized);
    FUNC1(node->link,payload,totlen);
    if (payload != buf) FUNC9(payload);
}