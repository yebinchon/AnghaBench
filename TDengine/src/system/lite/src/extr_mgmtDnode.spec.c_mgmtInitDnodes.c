
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int int64_t ;
struct TYPE_3__ {int createdTime; scalar_t__ numOfVnodes; void* thandle; int numOfTotalVnodes; int alternativeRole; int status; scalar_t__ numOfCores; scalar_t__ lastReboot; int privateIp; } ;


 int TSDB_DNODE_ROLE_ANY ;
 scalar_t__ TSDB_INVALID_VNODE_NUM ;
 int TSDB_STATUS_READY ;
 TYPE_1__ dnodeObj ;
 int inet_addr (int ) ;
 int mPrint (char*,scalar_t__) ;
 int mgmtSetDnodeMaxVnodes (TYPE_1__*) ;
 int tsInternalIp ;
 scalar_t__ tsNumOfCores ;
 int tsNumOfTotalVnodes ;
 scalar_t__ tsRebootTime ;

int mgmtInitDnodes() {
  dnodeObj.privateIp = inet_addr(tsInternalIp);;
  dnodeObj.createdTime = (int64_t)tsRebootTime * 1000;
  dnodeObj.lastReboot = tsRebootTime;
  dnodeObj.numOfCores = (uint16_t)tsNumOfCores;
  dnodeObj.status = TSDB_STATUS_READY;
  dnodeObj.alternativeRole = TSDB_DNODE_ROLE_ANY;
  dnodeObj.numOfTotalVnodes = tsNumOfTotalVnodes;
  dnodeObj.thandle = (void*)(1);
  if (dnodeObj.numOfVnodes == TSDB_INVALID_VNODE_NUM) {
    mgmtSetDnodeMaxVnodes(&dnodeObj);
    mPrint("first access, set total vnodes:%d", dnodeObj.numOfVnodes);
  }
  return 0;
}
