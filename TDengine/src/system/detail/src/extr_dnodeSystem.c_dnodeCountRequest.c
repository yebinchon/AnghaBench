
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* insertReqNum; void* selectReqNum; int httpReqNum; } ;
typedef TYPE_1__ SCountInfo ;


 void* atomic_exchange_32 (int *,int ) ;
 int httpGetReqCount (int *) ;
 int vnodeInsertReqNum ;
 int vnodeSelectReqNum ;

void dnodeCountRequest(SCountInfo *info) {
  httpGetReqCount(&info->httpReqNum);
  info->selectReqNum = atomic_exchange_32(&vnodeSelectReqNum, 0);
  info->insertReqNum = atomic_exchange_32(&vnodeInsertReqNum, 0);
}
