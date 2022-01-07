
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zToken; } ;
struct TYPE_11__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_10__ {int pParse; } ;
typedef TYPE_2__ NameContext ;
typedef TYPE_3__ Expr ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_STRING ;
 int sqlite3ErrorMsg (int ,char*,int ) ;
 int sqlite3ExprIsConstant (TYPE_3__*) ;
 int sqlite3ResolveExprNames (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int resolveAttachExpr(NameContext *pName, Expr *pExpr)
{
  int rc = SQLITE_OK;
  if( pExpr ){
    if( pExpr->op!=TK_ID ){
      rc = sqlite3ResolveExprNames(pName, pExpr);
      if( rc==SQLITE_OK && !sqlite3ExprIsConstant(pExpr) ){
        sqlite3ErrorMsg(pName->pParse, "invalid name: \"%s\"", pExpr->u.zToken);
        return SQLITE_ERROR;
      }
    }else{
      pExpr->op = TK_STRING;
    }
  }
  return rc;
}
