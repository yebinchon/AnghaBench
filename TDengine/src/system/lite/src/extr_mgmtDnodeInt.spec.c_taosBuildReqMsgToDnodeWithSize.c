
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SDnodeObj ;


 scalar_t__ malloc (int) ;

char *taosBuildReqMsgToDnodeWithSize(SDnodeObj *pObj, char type, int size) {
  char *pStart = (char *)malloc(size);
  if (pStart == ((void*)0)) {
    return ((void*)0);
  }

  *pStart = type;
  return pStart + 1;
}
