
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numOfVnodes; scalar_t__ vnodeGid; } ;
typedef TYPE_1__ SVgObj ;


 int mgmtSendOneFreeVnodeMsg (scalar_t__) ;

int mgmtSendFreeVnodeMsg(SVgObj *pVgroup) {
  for (int i = 0; i < pVgroup->numOfVnodes; ++i) {
    mgmtSendOneFreeVnodeMsg(pVgroup->vnodeGid + i);
  }

  return 0;
}
