
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nTree; int * aReadr; TYPE_2__* pTask; } ;
struct TYPE_8__ {TYPE_1__* pUnpacked; } ;
struct TYPE_7__ {int errCode; } ;
typedef TYPE_2__ SortSubtask ;
typedef TYPE_3__ MergeEngine ;


 int INCRINIT_NORMAL ;
 int INCRINIT_ROOT ;
 scalar_t__ SQLITE_MAX_WORKER_THREADS ;
 int SQLITE_OK ;
 int assert (int) ;
 int vdbeMergeEngineCompare (TYPE_3__*,int) ;
 int vdbePmaReaderIncrInit (int *,int) ;
 int vdbePmaReaderNext (int *) ;

__attribute__((used)) static int vdbeMergeEngineInit(
  SortSubtask *pTask,
  MergeEngine *pMerger,
  int eMode
){
  int rc = SQLITE_OK;
  int i;
  int nTree = pMerger->nTree;


  assert( SQLITE_MAX_WORKER_THREADS>0 || eMode==INCRINIT_NORMAL );


  assert( pMerger->pTask==0 );
  pMerger->pTask = pTask;

  for(i=0; i<nTree; i++){
    if( SQLITE_MAX_WORKER_THREADS>0 && eMode==INCRINIT_ROOT ){







      rc = vdbePmaReaderNext(&pMerger->aReadr[nTree-i-1]);
    }else{
      rc = vdbePmaReaderIncrInit(&pMerger->aReadr[i], INCRINIT_NORMAL);
    }
    if( rc!=SQLITE_OK ) return rc;
  }

  for(i=pMerger->nTree-1; i>0; i--){
    vdbeMergeEngineCompare(pMerger, i);
  }
  return pTask->pUnpacked->errCode;
}
