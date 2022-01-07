
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgmtObj ;


 char* taosBuildRspMsgToMnodeWithSize (int *,char,int) ;

char *taosBuildRspMsgToMnode(SMgmtObj *pObj, char type) {
  return taosBuildRspMsgToMnodeWithSize(pObj, type, 256);
}
