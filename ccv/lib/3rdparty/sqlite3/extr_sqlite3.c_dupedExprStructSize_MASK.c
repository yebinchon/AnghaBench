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
struct TYPE_5__ {scalar_t__ pList; } ;
struct TYPE_6__ {scalar_t__ op; scalar_t__ pRight; TYPE_1__ x; scalar_t__ pLeft; } ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 int EP_FromJoin ; 
 int EP_MemToken ; 
 int EP_NoReduce ; 
 int EP_Reduced ; 
 int EP_TokenOnly ; 
 int EXPRDUP_REDUCE ; 
 int EXPR_FULLSIZE ; 
 int EXPR_REDUCEDSIZE ; 
 int EXPR_TOKENONLYSIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 scalar_t__ TK_SELECT_COLUMN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(Expr *p, int flags){
  int nSize;
  FUNC1( flags==EXPRDUP_REDUCE || flags==0 ); /* Only one flag value allowed */
  FUNC1( EXPR_FULLSIZE<=0xfff );
  FUNC1( (0xfff & (EP_Reduced|EP_TokenOnly))==0 );
  if( 0==flags || p->op==TK_SELECT_COLUMN ){
    nSize = EXPR_FULLSIZE;
  }else{
    FUNC1( !FUNC0(p, EP_TokenOnly|EP_Reduced) );
    FUNC1( !FUNC0(p, EP_FromJoin) ); 
    FUNC1( !FUNC0(p, EP_MemToken) );
    FUNC1( !FUNC0(p, EP_NoReduce) );
    if( p->pLeft || p->x.pList ){
      nSize = EXPR_REDUCEDSIZE | EP_Reduced;
    }else{
      FUNC1( p->pRight==0 );
      nSize = EXPR_TOKENONLYSIZE | EP_TokenOnly;
    }
  }
  return nSize;
}