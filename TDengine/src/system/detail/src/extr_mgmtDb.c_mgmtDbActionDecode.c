
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* updateEnd; } ;
typedef TYPE_1__ SDbObj ;


 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void *mgmtDbActionDecode(void *row, char *str, int size, int *ssize) {
  SDbObj *pDb = (SDbObj *)malloc(sizeof(SDbObj));
  if (pDb == ((void*)0)) return ((void*)0);
  memset(pDb, 0, sizeof(SDbObj));

  int tsize = pDb->updateEnd - (char *)pDb;
  memcpy(pDb, str, tsize);

  return (void *)pDb;
}
