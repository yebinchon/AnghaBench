
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pList; } ;
struct TYPE_7__ {int flags2; TYPE_1__ x; scalar_t__ pRight; scalar_t__ pLeft; } ;
typedef TYPE_2__ Expr ;


 int EP2_Irreducible ;
 int EP2_MallocedToken ;
 int EP_FromJoin ;
 int EP_Reduced ;
 int EP_TokenOnly ;
 int EXPRDUP_REDUCE ;
 int EXPR_FULLSIZE ;
 int EXPR_REDUCEDSIZE ;
 int EXPR_TOKENONLYSIZE ;
 int ExprHasAnyProperty (TYPE_2__*,int) ;
 int ExprHasProperty (TYPE_2__*,int ) ;
 int assert (int) ;

__attribute__((used)) static int dupedExprStructSize(Expr *p, int flags){
  int nSize;
  assert( flags==EXPRDUP_REDUCE || flags==0 );
  if( 0==(flags&EXPRDUP_REDUCE) ){
    nSize = EXPR_FULLSIZE;
  }else{
    assert( !ExprHasAnyProperty(p, EP_TokenOnly|EP_Reduced) );
    assert( !ExprHasProperty(p, EP_FromJoin) );
    assert( (p->flags2 & EP2_MallocedToken)==0 );
    assert( (p->flags2 & EP2_Irreducible)==0 );
    if( p->pLeft || p->pRight || p->x.pList ){
      nSize = EXPR_REDUCEDSIZE | EP_Reduced;
    }else{
      nSize = EXPR_TOKENONLYSIZE | EP_TokenOnly;
    }
  }
  return nSize;
}
