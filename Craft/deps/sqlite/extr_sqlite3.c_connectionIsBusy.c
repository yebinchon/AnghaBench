
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nDb; TYPE_1__* aDb; scalar_t__ pVdbe; int mutex; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_4__ {int * pBt; } ;
typedef int Btree ;


 int assert (int ) ;
 scalar_t__ sqlite3BtreeIsInBackup (int *) ;
 int sqlite3_mutex_held (int ) ;

__attribute__((used)) static int connectionIsBusy(sqlite3 *db){
  int j;
  assert( sqlite3_mutex_held(db->mutex) );
  if( db->pVdbe ) return 1;
  for(j=0; j<db->nDb; j++){
    Btree *pBt = db->aDb[j].pBt;
    if( pBt && sqlite3BtreeIsInBackup(pBt) ) return 1;
  }
  return 0;
}
