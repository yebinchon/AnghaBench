
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* updateEnd; } ;
typedef TYPE_1__ SUserObj ;


 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void *mgmtUserActionDecode(void *row, char *str, int size, int *ssize) {
  SUserObj *pUser = (SUserObj *)malloc(sizeof(SUserObj));
  if (pUser == ((void*)0)) return ((void*)0);
  memset(pUser, 0, sizeof(SUserObj));

  int tsize = pUser->updateEnd - (char *)pUser;
  memcpy(pUser, str, tsize);
  return (void *)pUser;
}
