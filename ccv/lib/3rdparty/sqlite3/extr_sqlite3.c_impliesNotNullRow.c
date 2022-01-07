
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int iCur; } ;
struct TYPE_12__ {int eCode; TYPE_1__ u; } ;
typedef TYPE_4__ Walker ;
struct TYPE_13__ {int op; TYPE_3__* pRight; TYPE_2__* pLeft; int iTable; } ;
struct TYPE_11__ {int const op; int pTab; } ;
struct TYPE_10__ {int const op; int pTab; } ;
typedef TYPE_5__ Expr ;


 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (TYPE_5__*,int ) ;
 int IsVirtual (int ) ;
 int TK_AGG_COLUMN ;
 int TK_AGG_FUNCTION ;
 int WRC_Abort ;
 int WRC_Continue ;
 int WRC_Prune ;
 int assert (int) ;
 int testcase (int) ;

__attribute__((used)) static int impliesNotNullRow(Walker *pWalker, Expr *pExpr){






  assert( pExpr->op!=TK_AGG_COLUMN );
  testcase( pExpr->op==TK_AGG_FUNCTION );

  if( ExprHasProperty(pExpr, EP_FromJoin) ) return WRC_Prune;
  switch( pExpr->op ){
    case 134:
    case 129:
    case 133:
    case 135:
    case 128:
    case 142:
    case 136:
    case 139:
      testcase( pExpr->op==134 );
      testcase( pExpr->op==129 );
      testcase( pExpr->op==133 );
      testcase( pExpr->op==135 );
      testcase( pExpr->op==128 );
      testcase( pExpr->op==142 );
      testcase( pExpr->op==136 );
      testcase( pExpr->op==139 );
      return WRC_Prune;
    case 141:
      if( pWalker->u.iCur==pExpr->iTable ){
        pWalker->eCode = 1;
        return WRC_Abort;
      }
      return WRC_Prune;




    case 140:
    case 130:
    case 131:
    case 132:
    case 137:
    case 138:
      testcase( pExpr->op==140 );
      testcase( pExpr->op==130 );
      testcase( pExpr->op==131 );
      testcase( pExpr->op==132 );
      testcase( pExpr->op==137 );
      testcase( pExpr->op==138 );
      if( (pExpr->pLeft->op==141 && IsVirtual(pExpr->pLeft->pTab))
       || (pExpr->pRight->op==141 && IsVirtual(pExpr->pRight->pTab))
      ){
       return WRC_Prune;
      }
    default:
      return WRC_Continue;
  }
}
