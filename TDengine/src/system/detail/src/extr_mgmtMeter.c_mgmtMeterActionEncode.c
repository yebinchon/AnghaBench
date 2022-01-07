
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* updateEnd; int schemaSize; struct TYPE_3__* schema; } ;
typedef TYPE_1__ STabObj ;


 int assert (int) ;
 int memcpy (char*,TYPE_1__*,int) ;

void *mgmtMeterActionEncode(void *row, char *str, int size, int *ssize) {
  assert(row != ((void*)0) && str != ((void*)0));

  STabObj *pMeter = (STabObj *)row;
  int tsize = pMeter->updateEnd - (char *)pMeter;

  if (size < tsize + pMeter->schemaSize + 1) {
    *ssize = -1;
    return ((void*)0);
  }

  memcpy(str, pMeter, tsize);
  memcpy(str + tsize, pMeter->schema, pMeter->schemaSize);

  *ssize = tsize + pMeter->schemaSize;

  return ((void*)0);
}
