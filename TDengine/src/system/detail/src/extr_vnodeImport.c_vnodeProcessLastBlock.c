
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_19__ {scalar_t__ sversion; int numOfPoints; scalar_t__ last; int len; scalar_t__ offset; } ;
struct TYPE_14__ {scalar_t__ last; int numOfBlocks; } ;
struct TYPE_18__ {TYPE_1__ compInfo; scalar_t__ compInfoOffset; } ;
struct TYPE_17__ {TYPE_3__* pObj; } ;
struct TYPE_16__ {size_t vnode; scalar_t__ sversion; } ;
struct TYPE_15__ {int hfd; int lfd; int dfd; } ;
typedef TYPE_2__ SVnodeObj ;
typedef TYPE_3__ SMeterObj ;
typedef TYPE_4__ SImportInfo ;
typedef TYPE_5__ SHeadInfo ;
typedef int SData ;
typedef int SCompInfo ;
typedef TYPE_6__ SCompBlock ;


 int SEEK_END ;
 int SEEK_SET ;
 int assert (scalar_t__) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int read (int ,TYPE_6__*,int) ;
 int tsendfile (int ,int ,int *,int ) ;
 int twrite (int ,TYPE_6__*,int) ;
 TYPE_2__* vnodeList ;
 int vnodeReadLastBlockToMem (TYPE_3__*,TYPE_6__*,int **) ;

int vnodeProcessLastBlock(SImportInfo *pImport, SHeadInfo *pHinfo, SData *data[]) {
  SMeterObj *pObj = pImport->pObj;
  SVnodeObj *pVnode = &vnodeList[pObj->vnode];
  SCompBlock lastBlock;
  int code = 0;

  if (pHinfo->compInfo.last == 0) return 0;


  uint64_t offset =
      pHinfo->compInfoOffset + (pHinfo->compInfo.numOfBlocks - 1) * sizeof(SCompBlock) + sizeof(SCompInfo);
  lseek(pVnode->hfd, offset, SEEK_SET);
  read(pVnode->hfd, &lastBlock, sizeof(SCompBlock));
  assert(lastBlock.last);

  if (lastBlock.sversion != pObj->sversion) {
    lseek(pVnode->lfd, lastBlock.offset, SEEK_SET);
    lastBlock.offset = lseek(pVnode->dfd, 0, SEEK_END);
    tsendfile(pVnode->dfd, pVnode->lfd, ((void*)0), lastBlock.len);

    lastBlock.last = 0;
    lseek(pVnode->hfd, offset, SEEK_SET);
    twrite(pVnode->hfd, &lastBlock, sizeof(SCompBlock));
  } else {
    vnodeReadLastBlockToMem(pObj, &lastBlock, data);
    pHinfo->compInfo.numOfBlocks--;
    code = lastBlock.numOfPoints;
  }

  return code;
}
