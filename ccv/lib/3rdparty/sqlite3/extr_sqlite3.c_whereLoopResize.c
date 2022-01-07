
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int WhereTerm ;
struct TYPE_3__ {int nLSlot; int ** aLTerm; int ** aLTermSpace; } ;
typedef TYPE_1__ WhereLoop ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int memcpy (int **,int **,int) ;
 int sqlite3DbFreeNN (int *,int **) ;
 int ** sqlite3DbMallocRawNN (int *,int) ;

__attribute__((used)) static int whereLoopResize(sqlite3 *db, WhereLoop *p, int n){
  WhereTerm **paNew;
  if( p->nLSlot>=n ) return SQLITE_OK;
  n = (n+7)&~7;
  paNew = sqlite3DbMallocRawNN(db, sizeof(p->aLTerm[0])*n);
  if( paNew==0 ) return SQLITE_NOMEM_BKPT;
  memcpy(paNew, p->aLTerm, sizeof(p->aLTerm[0])*p->nLSlot);
  if( p->aLTerm!=p->aLTermSpace ) sqlite3DbFreeNN(db, p->aLTerm);
  p->aLTerm = paNew;
  p->nLSlot = n;
  return SQLITE_OK;
}
