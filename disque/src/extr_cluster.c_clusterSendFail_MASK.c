#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  nodename; } ;
struct TYPE_9__ {TYPE_1__ about; } ;
struct TYPE_10__ {TYPE_2__ fail; } ;
struct TYPE_12__ {int /*<<< orphan*/  totlen; TYPE_3__ data; } ;
typedef  TYPE_5__ clusterMsg ;
struct TYPE_13__ {TYPE_4__* cluster; } ;
struct TYPE_11__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_TYPE_FAIL ; 
 int /*<<< orphan*/  CLUSTER_NAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_6__ server ; 

void FUNC4(char *nodename) {
    unsigned char buf[sizeof(clusterMsg)];
    clusterMsg *hdr = (clusterMsg*) buf;

    FUNC1(hdr,CLUSTERMSG_TYPE_FAIL);
    FUNC2(hdr->data.fail.about.nodename,nodename,CLUSTER_NAMELEN);
    FUNC0(server.cluster->nodes,buf,FUNC3(hdr->totlen));
}