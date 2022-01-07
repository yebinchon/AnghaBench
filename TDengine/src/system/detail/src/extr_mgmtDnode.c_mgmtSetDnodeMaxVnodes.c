
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfCores; int numOfTotalVnodes; scalar_t__ alternativeRole; int numOfVnodes; int numOfFreeVnodes; int status; scalar_t__ openVnodes; } ;
typedef TYPE_1__ SDnodeObj ;


 scalar_t__ TSDB_DNODE_ROLE_MGMT ;
 int TSDB_MAX_VNODES ;
 int TSDB_MIN_VNODES ;
 int TSDB_STATUS_OFFLINE ;
 int TSDB_STATUS_READY ;
 int tsNumOfVnodesPerCore ;

void mgmtSetDnodeMaxVnodes(SDnodeObj *pDnode) {
  int maxVnodes = pDnode->numOfCores * tsNumOfVnodesPerCore;
  maxVnodes = maxVnodes > TSDB_MAX_VNODES ? TSDB_MAX_VNODES : maxVnodes;
  maxVnodes = maxVnodes < TSDB_MIN_VNODES ? TSDB_MIN_VNODES : maxVnodes;
  if (pDnode->numOfTotalVnodes != 0) {
    maxVnodes = pDnode->numOfTotalVnodes;
  }
  if (pDnode->alternativeRole == TSDB_DNODE_ROLE_MGMT) {
    maxVnodes = 0;
  }

  pDnode->numOfVnodes = maxVnodes;
  pDnode->numOfFreeVnodes = maxVnodes;
  pDnode->openVnodes = 0;




  pDnode->status = TSDB_STATUS_READY;

}
