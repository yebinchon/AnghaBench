
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* pList; } ;
struct TYPE_8__ {int zToken; } ;
struct TYPE_13__ {scalar_t__ op; TYPE_2__ x; TYPE_1__ u; } ;
struct TYPE_12__ {int nExpr; TYPE_4__* a; } ;
struct TYPE_11__ {TYPE_3__* pExpr; } ;
struct TYPE_10__ {scalar_t__ op; } ;
typedef TYPE_5__ ExprList ;
typedef TYPE_6__ Expr ;


 scalar_t__ TK_COLUMN ;
 scalar_t__ TK_FUNCTION ;
 scalar_t__ sqlite3StrICmp (int ,char*) ;

__attribute__((used)) static int isMatchOfColumn(
  Expr *pExpr
){
  ExprList *pList;

  if( pExpr->op!=TK_FUNCTION ){
    return 0;
  }
  if( sqlite3StrICmp(pExpr->u.zToken,"match")!=0 ){
    return 0;
  }
  pList = pExpr->x.pList;
  if( pList->nExpr!=2 ){
    return 0;
  }
  if( pList->a[1].pExpr->op != TK_COLUMN ){
    return 0;
  }
  return 1;
}
