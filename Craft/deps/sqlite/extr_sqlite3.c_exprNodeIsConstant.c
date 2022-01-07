
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_2__ Walker ;
struct TYPE_9__ {int op; } ;
typedef TYPE_3__ Expr ;


 int EP_FromJoin ;
 scalar_t__ ExprHasAnyProperty (TYPE_3__*,int ) ;



 int const TK_EXISTS ;


 int const TK_SELECT ;
 int WRC_Abort ;
 int WRC_Continue ;
 int testcase (int) ;

__attribute__((used)) static int exprNodeIsConstant(Walker *pWalker, Expr *pExpr){




  if( pWalker->u.i==3 && ExprHasAnyProperty(pExpr, EP_FromJoin) ){
    pWalker->u.i = 0;
    return WRC_Abort;
  }

  switch( pExpr->op ){


    case 129:
      if( pWalker->u.i==2 ) return 0;

    case 128:
    case 130:
    case 131:
    case 132:
      testcase( pExpr->op==128 );
      testcase( pExpr->op==130 );
      testcase( pExpr->op==131 );
      testcase( pExpr->op==132 );
      pWalker->u.i = 0;
      return WRC_Abort;
    default:
      testcase( pExpr->op==TK_SELECT );
      testcase( pExpr->op==TK_EXISTS );
      return WRC_Continue;
  }
}
