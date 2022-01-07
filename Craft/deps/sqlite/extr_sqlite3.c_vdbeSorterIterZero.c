
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_4__ {int aBuffer; int aAlloc; } ;
typedef TYPE_1__ VdbeSorterIter ;


 int memset (TYPE_1__*,int ,int) ;
 int sqlite3DbFree (int *,int ) ;

__attribute__((used)) static void vdbeSorterIterZero(sqlite3 *db, VdbeSorterIter *pIter){
  sqlite3DbFree(db, pIter->aAlloc);
  sqlite3DbFree(db, pIter->aBuffer);
  memset(pIter, 0, sizeof(VdbeSorterIter));
}
