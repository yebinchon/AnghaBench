
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {struct TYPE_4__* pNext; } ;
typedef TYPE_1__ SorterRecord ;


 int sqlite3DbFree (int *,TYPE_1__*) ;

__attribute__((used)) static void vdbeSorterRecordFree(sqlite3 *db, SorterRecord *pRecord){
  SorterRecord *p;
  SorterRecord *pNext;
  for(p=pRecord; p; p=pNext){
    pNext = p->pNext;
    sqlite3DbFree(db, p);
  }
}
