
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct stat {int st_size; } ;
struct TYPE_17__ {scalar_t__ compInfoOffset; scalar_t__ uid; int numOfBlocks; scalar_t__ last; } ;
struct TYPE_22__ {int hfdSize; int last; int compInfoOffset; int leftOffset; int oldNumOfBlocks; TYPE_14__ compInfo; TYPE_14__* headList; scalar_t__ newBlocks; } ;
struct TYPE_21__ {scalar_t__ fileId; scalar_t__ pos; int slot; TYPE_3__* pObj; } ;
struct TYPE_20__ {size_t vnode; size_t sid; scalar_t__ uid; } ;
struct TYPE_19__ {int maxSessions; } ;
struct TYPE_18__ {scalar_t__ nfd; scalar_t__ commitLastKey; scalar_t__ hfd; scalar_t__ commitFileId; int cfn; scalar_t__ commitFirstKey; TYPE_2__ cfg; } ;
typedef scalar_t__ TSKEY ;
typedef TYPE_1__ SVnodeObj ;
typedef TYPE_2__ SVnodeCfg ;
typedef TYPE_3__ SMeterObj ;
typedef TYPE_4__ SImportInfo ;
typedef TYPE_5__ SHeadInfo ;
typedef int SData ;
typedef int SCompInfo ;
typedef int SCompHeader ;
typedef int SCompBlock ;


 int SEEK_CUR ;
 int SEEK_SET ;
 int TSDB_FILE_HEADER_LEN ;
 int dError (char*,size_t,size_t,int ) ;
 int fstat (scalar_t__,struct stat*) ;
 int lseek (scalar_t__,int,int ) ;
 int memset (TYPE_14__*,int ,int) ;
 int read (scalar_t__,TYPE_14__*,int) ;
 int tsendfile (scalar_t__,scalar_t__,int *,int) ;
 int twrite (scalar_t__,TYPE_14__*,int) ;
 int vnodeCloseFileForImport (TYPE_3__*,TYPE_5__*) ;
 TYPE_1__* vnodeList ;
 scalar_t__ vnodeOpenCommitFiles (TYPE_1__*,size_t) ;
 int vnodeProcessLastBlock (TYPE_4__*,TYPE_5__*,int **) ;

int vnodeOpenFileForImport(SImportInfo *pImport, char *payload, SHeadInfo *pHinfo, SData *data[]) {
  SMeterObj *pObj = pImport->pObj;
  SVnodeObj *pVnode = &vnodeList[pObj->vnode];
  SVnodeCfg *pCfg = &pVnode->cfg;
  TSKEY firstKey = *((TSKEY *)payload);
  struct stat filestat;
  int sid, rowsBefore = 0;

  if (pVnode->nfd <= 0 || firstKey > pVnode->commitLastKey) {
    if (pVnode->nfd > 0) vnodeCloseFileForImport(pObj, pHinfo);

    pVnode->commitFirstKey = firstKey;
    if (vnodeOpenCommitFiles(pVnode, pObj->sid) < 0) return -1;

    fstat(pVnode->hfd, &filestat);
    pHinfo->hfdSize = filestat.st_size;
    pHinfo->newBlocks = 0;
    pHinfo->last = 1;

    lseek(pVnode->hfd, TSDB_FILE_HEADER_LEN, SEEK_SET);
    read(pVnode->hfd, pHinfo->headList, sizeof(SCompHeader) * pCfg->maxSessions);

    if (pHinfo->headList[pObj->sid].compInfoOffset > 0) {
      lseek(pVnode->hfd, pHinfo->headList[pObj->sid].compInfoOffset, SEEK_SET);
      if (read(pVnode->hfd, &pHinfo->compInfo, sizeof(SCompInfo)) != sizeof(SCompInfo)) {
        dError("vid:%d sid:%d, failed to read compInfo from file:%s", pObj->vnode, pObj->sid, pVnode->cfn);
        return -1;
      }

      if (pHinfo->compInfo.uid == pObj->uid) {
        pHinfo->compInfoOffset = pHinfo->headList[pObj->sid].compInfoOffset;
        pHinfo->leftOffset = pHinfo->headList[pObj->sid].compInfoOffset + sizeof(SCompInfo);
      } else {
        pHinfo->headList[pObj->sid].compInfoOffset = 0;
      }
    }

    if ( pHinfo->headList[pObj->sid].compInfoOffset == 0 ) {
      memset(&pHinfo->compInfo, 0, sizeof(SCompInfo));
      pHinfo->compInfo.uid = pObj->uid;

      for (sid = pObj->sid + 1; sid < pCfg->maxSessions; ++sid)
        if (pHinfo->headList[sid].compInfoOffset > 0) break;

      pHinfo->compInfoOffset = (sid == pCfg->maxSessions) ? pHinfo->hfdSize : pHinfo->headList[sid].compInfoOffset;
      pHinfo->leftOffset = pHinfo->compInfoOffset;
    }

    pHinfo->oldNumOfBlocks = pHinfo->compInfo.numOfBlocks;
    lseek(pVnode->hfd, 0, SEEK_SET);
    lseek(pVnode->nfd, 0, SEEK_SET);
    tsendfile(pVnode->nfd, pVnode->hfd, ((void*)0), pHinfo->compInfoOffset);
    twrite(pVnode->nfd, &pHinfo->compInfo, sizeof(SCompInfo));
    if (pHinfo->headList[pObj->sid].compInfoOffset > 0) lseek(pVnode->hfd, sizeof(SCompInfo), SEEK_CUR);

    if (pVnode->commitFileId < pImport->fileId) {
      if (pHinfo->compInfo.numOfBlocks > 0)
        pHinfo->leftOffset += pHinfo->compInfo.numOfBlocks * sizeof(SCompBlock);

      rowsBefore = vnodeProcessLastBlock(pImport, pHinfo, data);


      lseek(pVnode->hfd, pHinfo->compInfoOffset + sizeof(SCompInfo), SEEK_SET);
      if (pHinfo->compInfo.numOfBlocks > 0)
        tsendfile(pVnode->nfd, pVnode->hfd, ((void*)0), pHinfo->compInfo.numOfBlocks * sizeof(SCompBlock));

    } else if (pVnode->commitFileId == pImport->fileId) {
      int slots = pImport->pos ? pImport->slot + 1 : pImport->slot;
      pHinfo->leftOffset += slots * sizeof(SCompBlock);


      if (pImport->pos == 0 && pHinfo->compInfo.numOfBlocks > 0 && pImport->slot == pHinfo->compInfo.numOfBlocks &&
          pHinfo->compInfo.last) {
        rowsBefore = vnodeProcessLastBlock(pImport, pHinfo, data);
        if ( rowsBefore > 0 ) pImport->slot--;
      }


      if (pImport->pos > 0) pHinfo->compInfo.numOfBlocks--;

      if (pImport->slot > 0) {
        lseek(pVnode->hfd, pHinfo->compInfoOffset + sizeof(SCompInfo), SEEK_SET);
        tsendfile(pVnode->nfd, pVnode->hfd, ((void*)0), pImport->slot * sizeof(SCompBlock));
      }

      if (pImport->slot < pHinfo->compInfo.numOfBlocks)
        pHinfo->last = 0;

    } else {


      pHinfo->last = 0;
    }
  }

  return rowsBefore;
}
