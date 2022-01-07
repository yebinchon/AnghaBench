
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_5__ {int iDb; int zName; int isWriteLock; int iTab; } ;
typedef TYPE_1__ TableLock ;
struct TYPE_6__ {int nTableLock; TYPE_1__* aTableLock; } ;
typedef TYPE_2__ Parse ;


 int OP_TableLock ;
 int P4_STATIC ;
 int assert (int) ;
 int * sqlite3GetVdbe (TYPE_2__*) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,int ,int ) ;

__attribute__((used)) static void codeTableLocks(Parse *pParse){
  int i;
  Vdbe *pVdbe;

  pVdbe = sqlite3GetVdbe(pParse);
  assert( pVdbe!=0 );

  for(i=0; i<pParse->nTableLock; i++){
    TableLock *p = &pParse->aTableLock[i];
    int p1 = p->iDb;
    sqlite3VdbeAddOp4(pVdbe, OP_TableLock, p1, p->iTab, p->isWriteLock,
                      p->zName, P4_STATIC);
  }
}
