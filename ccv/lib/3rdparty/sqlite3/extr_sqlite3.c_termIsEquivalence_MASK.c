#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  zName; } ;
struct TYPE_11__ {scalar_t__ op; int /*<<< orphan*/  pRight; int /*<<< orphan*/  pLeft; } ;
struct TYPE_10__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ Parse ;
typedef  TYPE_2__ Expr ;
typedef  TYPE_3__ CollSeq ;

/* Variables and functions */
 int /*<<< orphan*/  EP_FromJoin ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQLITE_Transitive ; 
 scalar_t__ TK_EQ ; 
 scalar_t__ TK_IS ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(Parse *pParse, Expr *pExpr){
  char aff1, aff2;
  CollSeq *pColl;
  if( !FUNC1(pParse->db, SQLITE_Transitive) ) return 0;
  if( pExpr->op!=TK_EQ && pExpr->op!=TK_IS ) return 0;
  if( FUNC0(pExpr, EP_FromJoin) ) return 0;
  aff1 = FUNC3(pExpr->pLeft);
  aff2 = FUNC3(pExpr->pRight);
  if( aff1!=aff2
   && (!FUNC5(aff1) || !FUNC5(aff2))
  ){
    return 0;
  }
  pColl = FUNC2(pParse, pExpr->pLeft, pExpr->pRight);
  if( pColl==0 || FUNC6(pColl->zName, "BINARY")==0 ) return 1;
  return FUNC4(pParse, pExpr->pLeft, pExpr->pRight);
}