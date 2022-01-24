#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w ;
struct TYPE_5__ {int* aiCol; } ;
struct TYPE_6__ {int eCode; TYPE_1__ u; int /*<<< orphan*/  xExprCallback; } ;
typedef  TYPE_2__ Walker ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int CKCNSTRNT_COLUMN ; 
 int CKCNSTRNT_ROWID ; 
 int /*<<< orphan*/  checkConstraintExprNode ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(Expr *pExpr, int *aiChng, int chngRowid){
  Walker w;
  FUNC0(&w, 0, sizeof(w));
  w.eCode = 0;
  w.xExprCallback = checkConstraintExprNode;
  w.u.aiCol = aiChng;
  FUNC1(&w, pExpr);
  if( !chngRowid ){
    FUNC2( (w.eCode & CKCNSTRNT_ROWID)!=0 );
    w.eCode &= ~CKCNSTRNT_ROWID;
  }
  FUNC2( w.eCode==0 );
  FUNC2( w.eCode==CKCNSTRNT_COLUMN );
  FUNC2( w.eCode==CKCNSTRNT_ROWID );
  FUNC2( w.eCode==(CKCNSTRNT_ROWID|CKCNSTRNT_COLUMN) );
  return !w.eCode;
}