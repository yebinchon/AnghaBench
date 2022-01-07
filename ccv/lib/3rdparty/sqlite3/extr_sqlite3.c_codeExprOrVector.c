
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Vdbe ;
struct TYPE_13__ {TYPE_4__* pList; } ;
struct TYPE_17__ {int flags; TYPE_1__ x; } ;
struct TYPE_16__ {int nExpr; TYPE_2__* a; } ;
struct TYPE_15__ {int * pVdbe; } ;
struct TYPE_14__ {TYPE_5__* pExpr; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ ExprList ;
typedef TYPE_5__ Expr ;


 int EP_xIsSelect ;
 int OP_Copy ;
 int assert (int) ;
 int sqlite3CodeSubselect (TYPE_3__*,TYPE_5__*,int ,int ) ;
 int sqlite3ExprCode (TYPE_3__*,TYPE_5__*,int) ;
 scalar_t__ sqlite3ExprIsVector (TYPE_5__*) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;

__attribute__((used)) static void codeExprOrVector(Parse *pParse, Expr *p, int iReg, int nReg){
  assert( nReg>0 );
  if( p && sqlite3ExprIsVector(p) ){

    if( (p->flags & EP_xIsSelect) ){
      Vdbe *v = pParse->pVdbe;
      int iSelect = sqlite3CodeSubselect(pParse, p, 0, 0);
      sqlite3VdbeAddOp3(v, OP_Copy, iSelect, iReg, nReg-1);
    }else

    {
      int i;
      ExprList *pList = p->x.pList;
      assert( nReg<=pList->nExpr );
      for(i=0; i<nReg; i++){
        sqlite3ExprCode(pParse, pList->a[i].pExpr, iReg+i);
      }
    }
  }else{
    assert( nReg==1 );
    sqlite3ExprCode(pParse, p, iReg);
  }
}
