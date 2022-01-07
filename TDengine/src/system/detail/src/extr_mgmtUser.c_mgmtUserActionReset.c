
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* updateEnd; } ;
typedef TYPE_1__ SUserObj ;


 int memcpy (TYPE_1__*,char*,int) ;

void *mgmtUserActionReset(void *row, char *str, int size, int *ssize) {
  SUserObj *pUser = (SUserObj *)row;
  int tsize = pUser->updateEnd - (char *)pUser;
  memcpy(pUser, str, tsize);

  return ((void*)0);
}
