
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct WalSegment {size_t iNext; size_t nEntry; int* aPgno; size_t* aIndex; int iZero; } ;
struct TYPE_3__ {int iPrior; int nSegment; struct WalSegment* aSegment; } ;
typedef TYPE_1__ WalIterator ;


 int assert (int) ;

__attribute__((used)) static int walIteratorNext(
  WalIterator *p,
  u32 *piPage,
  u32 *piFrame
){
  u32 iMin;
  u32 iRet = 0xFFFFFFFF;
  int i;

  iMin = p->iPrior;
  assert( iMin<0xffffffff );
  for(i=p->nSegment-1; i>=0; i--){
    struct WalSegment *pSegment = &p->aSegment[i];
    while( pSegment->iNext<pSegment->nEntry ){
      u32 iPg = pSegment->aPgno[pSegment->aIndex[pSegment->iNext]];
      if( iPg>iMin ){
        if( iPg<iRet ){
          iRet = iPg;
          *piFrame = pSegment->iZero + pSegment->aIndex[pSegment->iNext];
        }
        break;
      }
      pSegment->iNext++;
    }
  }

  *piPage = p->iPrior = iRet;
  return (iRet==0xFFFFFFFF);
}
