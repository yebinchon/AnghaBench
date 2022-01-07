
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numOfUpdates; int updatePos; int maxRows; TYPE_1__* update; int (* appTool ) (int ,char*,int *,int ,int *) ;} ;
struct TYPE_4__ {char type; char* row; } ;
typedef TYPE_2__ SSdbTable ;


 char SDB_TYPE_DELETE ;
 int SDB_TYPE_DESTROY ;
 int stub1 (int ,char*,int *,int ,int *) ;

void sdbAddIntoUpdateList(SSdbTable *pTable, char type, char *row) {
  pTable->numOfUpdates++;
  pTable->updatePos = pTable->numOfUpdates % pTable->maxRows;

  if (pTable->update[pTable->updatePos].type == SDB_TYPE_DELETE)
    (*(pTable->appTool))(SDB_TYPE_DESTROY, pTable->update[pTable->updatePos].row, ((void*)0), 0, ((void*)0));

  pTable->update[pTable->updatePos].type = type;
  pTable->update[pTable->updatePos].row = row;
}
