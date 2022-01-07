
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ len; } ;
struct TYPE_12__ {int numOfVnodes; int f; int tsOrder; TYPE_1__* pData; TYPE_6__ tsData; } ;
struct TYPE_11__ {int numOfVnode; int tsOrder; int magic; } ;
struct TYPE_10__ {int info; } ;
typedef int STSVnodeBlockInfo ;
typedef TYPE_2__ STSBufFileHeader ;
typedef TYPE_3__ STSBuf ;


 int STSBufUpdateHeader (TYPE_3__*,TYPE_2__*) ;
 int TSBufUpdateVnodeInfo (TYPE_3__*,int,int *) ;
 int TS_COMP_FILE_MAGIC ;
 int fileno (int ) ;
 int fsync (int ) ;
 int shrinkBuffer (TYPE_6__*) ;
 int writeDataToDisk (TYPE_3__*) ;

void tsBufFlush(STSBuf* pTSBuf) {
  if (pTSBuf->tsData.len <= 0) {
    return;
  }

  writeDataToDisk(pTSBuf);
  shrinkBuffer(&pTSBuf->tsData);

  STSVnodeBlockInfo* pBlockInfo = &pTSBuf->pData[pTSBuf->numOfVnodes - 1].info;


  TSBufUpdateVnodeInfo(pTSBuf, pTSBuf->numOfVnodes - 1, pBlockInfo);


  STSBufFileHeader header = {
      .magic = TS_COMP_FILE_MAGIC, .numOfVnode = pTSBuf->numOfVnodes, .tsOrder = pTSBuf->tsOrder};
  STSBufUpdateHeader(pTSBuf, &header);

  fsync(fileno(pTSBuf->f));
}
