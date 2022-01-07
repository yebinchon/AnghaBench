
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* updateEnd; } ;
typedef TYPE_1__ SUserObj ;


 int memcpy (char*,TYPE_1__*,int) ;

void *mgmtUserActionEncode(void *row, char *str, int size, int *ssize) {
  SUserObj *pUser = (SUserObj *)row;
  int tsize = pUser->updateEnd - (char *)pUser;
  if (size < tsize) {
    *ssize = -1;
  } else {
    memcpy(str, pUser, tsize);
    *ssize = tsize;
  }
  return ((void*)0);
}
