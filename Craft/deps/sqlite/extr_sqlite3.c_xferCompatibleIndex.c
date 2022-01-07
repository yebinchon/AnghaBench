
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pTable; int nColumn; scalar_t__ onError; scalar_t__* aiColumn; scalar_t__* aSortOrder; int * azColl; } ;
typedef TYPE_1__ Index ;


 int assert (int) ;
 int xferCompatibleCollation (int ,int ) ;

__attribute__((used)) static int xferCompatibleIndex(Index *pDest, Index *pSrc){
  int i;
  assert( pDest && pSrc );
  assert( pDest->pTable!=pSrc->pTable );
  if( pDest->nColumn!=pSrc->nColumn ){
    return 0;
  }
  if( pDest->onError!=pSrc->onError ){
    return 0;
  }
  for(i=0; i<pSrc->nColumn; i++){
    if( pSrc->aiColumn[i]!=pDest->aiColumn[i] ){
      return 0;
    }
    if( pSrc->aSortOrder[i]!=pDest->aSortOrder[i] ){
      return 0;
    }
    if( !xferCompatibleCollation(pSrc->azColl[i],pDest->azColl[i]) ){
      return 0;
    }
  }


  return 1;
}
