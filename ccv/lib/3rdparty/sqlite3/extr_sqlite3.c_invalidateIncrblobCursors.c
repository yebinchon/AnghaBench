
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ i64 ;
struct TYPE_8__ {scalar_t__ nKey; } ;
struct TYPE_10__ {int curFlags; scalar_t__ pgnoRoot; int eState; TYPE_2__ info; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {int hasIncrblobCur; TYPE_1__* pBt; } ;
struct TYPE_7__ {TYPE_4__* pCursor; } ;
typedef scalar_t__ Pgno ;
typedef TYPE_3__ Btree ;
typedef TYPE_4__ BtCursor ;


 int BTCF_Incrblob ;
 int CURSOR_INVALID ;
 int assert (int ) ;
 int sqlite3BtreeHoldsMutex (TYPE_3__*) ;

__attribute__((used)) static void invalidateIncrblobCursors(
  Btree *pBtree,
  Pgno pgnoRoot,
  i64 iRow,
  int isClearTable
){
  BtCursor *p;
  if( pBtree->hasIncrblobCur==0 ) return;
  assert( sqlite3BtreeHoldsMutex(pBtree) );
  pBtree->hasIncrblobCur = 0;
  for(p=pBtree->pBt->pCursor; p; p=p->pNext){
    if( (p->curFlags & BTCF_Incrblob)!=0 ){
      pBtree->hasIncrblobCur = 1;
      if( p->pgnoRoot==pgnoRoot && (isClearTable || p->info.nKey==iRow) ){
        p->eState = CURSOR_INVALID;
      }
    }
  }
}
