
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* updateEnd; } ;
typedef TYPE_1__ SVgObj ;


 int memcpy (char*,TYPE_1__*,int) ;

void *mgmtVgroupActionEncode(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)row;
  int tsize = pVgroup->updateEnd - (char *)pVgroup;
  if (size < tsize) {
    *ssize = -1;
  } else {
    memcpy(str, pVgroup, tsize);
    *ssize = tsize;
  }

  return ((void*)0);
}
