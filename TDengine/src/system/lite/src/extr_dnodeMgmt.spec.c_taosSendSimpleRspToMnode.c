
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SMgmtObj ;


 char* taosBuildRspMsgToMnode (int ,char) ;
 int taosSendMsgToMnode (int ,char*,char) ;

int taosSendSimpleRspToMnode(SMgmtObj *pObj, char rsptype, char code) {
  char *pStart = taosBuildRspMsgToMnode(0, rsptype);
  if (pStart == ((void*)0)) {
    return 0;
  }

  *pStart = code;
  taosSendMsgToMnode(0, pStart, code);

  return 0;
}
