
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {int iDb; int nField; int * pCursor; int * aType; } ;
typedef TYPE_1__ VdbeCursor ;
struct TYPE_11__ {int nMem; int nCursor; TYPE_1__** apCsr; TYPE_3__* aMem; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_12__ {int * z; } ;
typedef TYPE_3__ Mem ;
typedef int BtCursor ;


 int ROUND8 (int) ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3BtreeCursorSize () ;
 int sqlite3BtreeCursorZero (int *) ;
 int sqlite3VdbeFreeCursor (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ sqlite3VdbeMemGrow (TYPE_3__*,int,int ) ;

__attribute__((used)) static VdbeCursor *allocateCursor(
  Vdbe *p,
  int iCur,
  int nField,
  int iDb,
  int isBtreeCursor
){
  Mem *pMem = &p->aMem[p->nMem-iCur];

  int nByte;
  VdbeCursor *pCx = 0;
  nByte =
      ROUND8(sizeof(VdbeCursor)) +
      (isBtreeCursor?sqlite3BtreeCursorSize():0) +
      2*nField*sizeof(u32);

  assert( iCur<p->nCursor );
  if( p->apCsr[iCur] ){
    sqlite3VdbeFreeCursor(p, p->apCsr[iCur]);
    p->apCsr[iCur] = 0;
  }
  if( SQLITE_OK==sqlite3VdbeMemGrow(pMem, nByte, 0) ){
    p->apCsr[iCur] = pCx = (VdbeCursor*)pMem->z;
    memset(pCx, 0, sizeof(VdbeCursor));
    pCx->iDb = iDb;
    pCx->nField = nField;
    if( nField ){
      pCx->aType = (u32 *)&pMem->z[ROUND8(sizeof(VdbeCursor))];
    }
    if( isBtreeCursor ){
      pCx->pCursor = (BtCursor*)
          &pMem->z[ROUND8(sizeof(VdbeCursor))+2*nField*sizeof(u32)];
      sqlite3BtreeCursorZero(pCx->pCursor);
    }
  }
  return pCx;
}
