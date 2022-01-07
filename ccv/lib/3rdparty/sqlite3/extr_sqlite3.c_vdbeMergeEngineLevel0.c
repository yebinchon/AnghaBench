
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_12__ {TYPE_2__* aReadr; } ;
struct TYPE_11__ {int iEof; } ;
struct TYPE_10__ {int file; } ;
typedef TYPE_1__ SortSubtask ;
typedef TYPE_2__ PmaReader ;
typedef TYPE_3__ MergeEngine ;


 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int vdbeMergeEngineFree (TYPE_3__*) ;
 TYPE_3__* vdbeMergeEngineNew (int) ;
 int vdbePmaReaderInit (TYPE_1__*,int *,int ,TYPE_2__*,int *) ;

__attribute__((used)) static int vdbeMergeEngineLevel0(
  SortSubtask *pTask,
  int nPMA,
  i64 *piOffset,
  MergeEngine **ppOut
){
  MergeEngine *pNew;
  i64 iOff = *piOffset;
  int i;
  int rc = SQLITE_OK;

  *ppOut = pNew = vdbeMergeEngineNew(nPMA);
  if( pNew==0 ) rc = SQLITE_NOMEM_BKPT;

  for(i=0; i<nPMA && rc==SQLITE_OK; i++){
    i64 nDummy = 0;
    PmaReader *pReadr = &pNew->aReadr[i];
    rc = vdbePmaReaderInit(pTask, &pTask->file, iOff, pReadr, &nDummy);
    iOff = pReadr->iEof;
  }

  if( rc!=SQLITE_OK ){
    vdbeMergeEngineFree(pNew);
    *ppOut = 0;
  }
  *piOffset = iOff;
  return rc;
}
