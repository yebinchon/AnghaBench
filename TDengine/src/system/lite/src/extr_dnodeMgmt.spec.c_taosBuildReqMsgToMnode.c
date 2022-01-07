
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgmtObj ;


 char* taosBuildReqMsgToMnodeWithSize (int *,char,int) ;

char *taosBuildReqMsgToMnode(SMgmtObj *pObj, char type) {
  return taosBuildReqMsgToMnodeWithSize(pObj, type, 256);
}
