#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  zToken; } ;
struct TYPE_11__ {scalar_t__ op; TYPE_1__ u; } ;
struct TYPE_10__ {int /*<<< orphan*/  pParse; } ;
typedef  TYPE_2__ NameContext ;
typedef  TYPE_3__ Expr ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 scalar_t__ TK_ID ; 
 scalar_t__ TK_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(NameContext *pName, Expr *pExpr)
{
  int rc = SQLITE_OK;
  if( pExpr ){
    if( pExpr->op!=TK_ID ){
      rc = FUNC2(pName, pExpr);
      if( rc==SQLITE_OK && !FUNC1(pExpr) ){
        FUNC0(pName->pParse, "invalid name: \"%s\"", pExpr->u.zToken);
        return SQLITE_ERROR;
      }
    }else{
      pExpr->op = TK_STRING;
    }
  }
  return rc;
}