
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WhereMaskSet ;
struct TYPE_5__ {int pList; int pSelect; } ;
struct TYPE_6__ {scalar_t__ op; TYPE_1__ x; struct TYPE_6__* pLeft; struct TYPE_6__* pRight; int iTable; } ;
typedef TYPE_2__ Expr ;
typedef int Bitmask ;


 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_2__*,int ) ;
 scalar_t__ TK_COLUMN ;
 int exprListTableUsage (int *,int ) ;
 int exprSelectTableUsage (int *,int ) ;
 int getMask (int *,int ) ;

__attribute__((used)) static Bitmask exprTableUsage(WhereMaskSet *pMaskSet, Expr *p){
  Bitmask mask = 0;
  if( p==0 ) return 0;
  if( p->op==TK_COLUMN ){
    mask = getMask(pMaskSet, p->iTable);
    return mask;
  }
  mask = exprTableUsage(pMaskSet, p->pRight);
  mask |= exprTableUsage(pMaskSet, p->pLeft);
  if( ExprHasProperty(p, EP_xIsSelect) ){
    mask |= exprSelectTableUsage(pMaskSet, p->x.pSelect);
  }else{
    mask |= exprListTableUsage(pMaskSet, p->x.pList);
  }
  return mask;
}
