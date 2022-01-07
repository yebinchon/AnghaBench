
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SShowObj ;
typedef void SDnodeObj ;


 int dnodeObj ;

void *mgmtGetNextDnode(SShowObj *pShow, SDnodeObj **pDnode) {
  if (*pDnode == ((void*)0)) {
    *pDnode = &dnodeObj;
  } else {
    *pDnode = ((void*)0);
  }

  return *pDnode;
}
