
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ssize_t ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_13__ {scalar_t__ numOfVnodes; int numOfAlloc; scalar_t__ fileSize; scalar_t__ numOfTotal; int f; TYPE_2__* pData; } ;
struct TYPE_11__ {int vnode; scalar_t__ offset; scalar_t__ compLen; scalar_t__ numOfBlocks; } ;
struct TYPE_12__ {TYPE_1__ info; scalar_t__ len; } ;
typedef TYPE_2__ STSVnodeBlockInfoEx ;
typedef TYPE_3__ STSBuf ;


 int SEEK_END ;
 scalar_t__ TS_COMP_FILE_VNODE_MAX ;
 int assert (int) ;
 int errno ;
 int fileno (int ) ;
 scalar_t__ fseek (int ,int ,int ) ;
 int fsendfile (int ,int ,scalar_t__*,int) ;
 scalar_t__ getDataStartOffset () ;
 int memcpy (TYPE_2__*,TYPE_2__*,size_t) ;
 int printf (char*,char*) ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 int sendfile (int ,int ,scalar_t__*,int) ;
 char* strerror (int ) ;
 int tsBufFlush (TYPE_3__*) ;

int32_t tsBufMerge(STSBuf* pDestBuf, const STSBuf* pSrcBuf, int32_t vnodeId) {
  if (pDestBuf == ((void*)0) || pSrcBuf == ((void*)0) || pSrcBuf->numOfVnodes <= 0) {
    return 0;
  }

  if (pDestBuf->numOfVnodes + pSrcBuf->numOfVnodes > TS_COMP_FILE_VNODE_MAX) {
    return -1;
  }


  if (pSrcBuf->numOfVnodes > 1) {
    return -1;
  }


  tsBufFlush(pDestBuf);


  if (vnodeId != pDestBuf->pData[pDestBuf->numOfVnodes - 1].info.vnode) {
    int32_t oldSize = pDestBuf->numOfVnodes;
    int32_t newSize = oldSize + pSrcBuf->numOfVnodes;

    if (pDestBuf->numOfAlloc < newSize) {
      pDestBuf->numOfAlloc = newSize;

      STSVnodeBlockInfoEx* tmp = realloc(pDestBuf->pData, sizeof(STSVnodeBlockInfoEx) * newSize);
      if (tmp == ((void*)0)) {
        return -1;
      }

      pDestBuf->pData = tmp;
    }


    memcpy(&pDestBuf->pData[oldSize], pSrcBuf->pData, (size_t)pSrcBuf->numOfVnodes * sizeof(STSVnodeBlockInfoEx));


    for (int32_t i = 0; i < pSrcBuf->numOfVnodes; ++i) {
      STSVnodeBlockInfoEx* pBlockInfoEx = &pDestBuf->pData[i + oldSize];
      pBlockInfoEx->info.offset = (pSrcBuf->pData[i].info.offset - getDataStartOffset()) + pDestBuf->fileSize;
      pBlockInfoEx->info.vnode = vnodeId;
    }

    pDestBuf->numOfVnodes = newSize;
  } else {
    STSVnodeBlockInfoEx* pBlockInfoEx = &pDestBuf->pData[pDestBuf->numOfVnodes - 1];
    pBlockInfoEx->len += pSrcBuf->pData[0].len;
    pBlockInfoEx->info.numOfBlocks += pSrcBuf->pData[0].info.numOfBlocks;
    pBlockInfoEx->info.compLen += pSrcBuf->pData[0].info.compLen;
    pBlockInfoEx->info.vnode = vnodeId;
  }

  int64_t r = fseek(pDestBuf->f, 0, SEEK_END);
  assert(r == 0);

  int64_t offset = getDataStartOffset();
  int32_t size = pSrcBuf->fileSize - offset;




  ssize_t rc = fsendfile(pDestBuf->f, pSrcBuf->f, &offset, size);

  if (rc == -1) {
    printf("%s\n", strerror(errno));
    return -1;
  }

  if (rc != size) {
    printf("%s\n", strerror(errno));
    return -1;
  }

  pDestBuf->numOfTotal += pSrcBuf->numOfTotal;

  return 0;
}
