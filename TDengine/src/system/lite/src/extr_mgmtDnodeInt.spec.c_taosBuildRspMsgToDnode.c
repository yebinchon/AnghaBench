
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDnodeObj ;


 char* taosBuildRspMsgToDnodeWithSize (int *,char,int) ;

char *taosBuildRspMsgToDnode(SDnodeObj *pObj, char type) {
  return taosBuildRspMsgToDnodeWithSize(pObj, type, 256);
}
