
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* updateEnd; } ;
typedef TYPE_1__ SDbObj ;


 int memcpy (TYPE_1__*,char*,int) ;

void *mgmtDbActionReset(void *row, char *str, int size, int *ssize) {
  SDbObj *pDb = (SDbObj *)row;
  int tsize = pDb->updateEnd - (char *)pDb;
  memcpy(pDb, str, tsize);

  return ((void*)0);
}
