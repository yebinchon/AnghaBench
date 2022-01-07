
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct SrcList_item {scalar_t__ iCursor; TYPE_1__* pTab; } ;
struct TYPE_7__ {size_t leftColumn; } ;
struct TYPE_9__ {scalar_t__ leftCursor; int eOperator; int prereqRight; int pExpr; TYPE_2__ u; } ;
typedef TYPE_4__ WhereTerm ;
struct TYPE_8__ {char affinity; } ;
struct TYPE_6__ {TYPE_3__* aCol; } ;
typedef int Bitmask ;


 int WO_EQ ;
 int sqlite3IndexAffinityOk (int ,char) ;

__attribute__((used)) static int termCanDriveIndex(
  WhereTerm *pTerm,
  struct SrcList_item *pSrc,
  Bitmask notReady
){
  char aff;
  if( pTerm->leftCursor!=pSrc->iCursor ) return 0;
  if( (pTerm->eOperator & WO_EQ)==0 ) return 0;
  if( (pTerm->prereqRight & notReady)!=0 ) return 0;
  aff = pSrc->pTab->aCol[pTerm->u.leftColumn].affinity;
  if( !sqlite3IndexAffinityOk(pTerm->pExpr, aff) ) return 0;
  return 1;
}
