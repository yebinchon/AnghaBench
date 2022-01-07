
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ahandle; } ;
typedef TYPE_1__ SSchedMsg ;
typedef int SQInfo ;


 int vnodeFreeQInfo (int *,int) ;

__attribute__((used)) static void vnodeFreeQInfoInQueueImpl(SSchedMsg *pMsg) {
  SQInfo *pQInfo = (SQInfo *)pMsg->ahandle;
  vnodeFreeQInfo(pQInfo, 1);
}
