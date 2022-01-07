
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int* aTree; int nTree; TYPE_3__* aReadr; TYPE_2__* pTask; } ;
struct TYPE_10__ {scalar_t__ pFd; int nKey; int aKey; } ;
struct TYPE_9__ {int (* xCompare ) (TYPE_2__*,int*,int ,int ,int ,int ) ;TYPE_1__* pUnpacked; } ;
struct TYPE_8__ {int errCode; } ;
typedef TYPE_2__ SortSubtask ;
typedef TYPE_3__ PmaReader ;
typedef TYPE_4__ MergeEngine ;


 int SQLITE_OK ;
 int stub1 (TYPE_2__*,int*,int ,int ,int ,int ) ;
 int vdbePmaReaderNext (TYPE_3__*) ;

__attribute__((used)) static int vdbeMergeEngineStep(
  MergeEngine *pMerger,
  int *pbEof
){
  int rc;
  int iPrev = pMerger->aTree[1];
  SortSubtask *pTask = pMerger->pTask;


  rc = vdbePmaReaderNext(&pMerger->aReadr[iPrev]);


  if( rc==SQLITE_OK ){
    int i;
    PmaReader *pReadr1;
    PmaReader *pReadr2;
    int bCached = 0;



    pReadr1 = &pMerger->aReadr[(iPrev & 0xFFFE)];
    pReadr2 = &pMerger->aReadr[(iPrev | 0x0001)];

    for(i=(pMerger->nTree+iPrev)/2; i>0; i=i/2){

      int iRes;
      if( pReadr1->pFd==0 ){
        iRes = +1;
      }else if( pReadr2->pFd==0 ){
        iRes = -1;
      }else{
        iRes = pTask->xCompare(pTask, &bCached,
            pReadr1->aKey, pReadr1->nKey, pReadr2->aKey, pReadr2->nKey
        );
      }
      if( iRes<0 || (iRes==0 && pReadr1<pReadr2) ){
        pMerger->aTree[i] = (int)(pReadr1 - pMerger->aReadr);
        pReadr2 = &pMerger->aReadr[ pMerger->aTree[i ^ 0x0001] ];
        bCached = 0;
      }else{
        if( pReadr1->pFd ) bCached = 0;
        pMerger->aTree[i] = (int)(pReadr2 - pMerger->aReadr);
        pReadr1 = &pMerger->aReadr[ pMerger->aTree[i ^ 0x0001] ];
      }
    }
    *pbEof = (pMerger->aReadr[pMerger->aTree[1]].pFd==0);
  }

  return (rc==SQLITE_OK ? pTask->pUnpacked->errCode : rc);
}
