
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tFlushoutInfo ;
typedef int tFilePage ;
struct TYPE_7__ {int nAllocSize; int * pFlushoutInfo; scalar_t__ nLength; } ;
struct TYPE_8__ {TYPE_1__ flushoutData; void* nPageSize; scalar_t__ nFileSize; scalar_t__ numOfElemsInFile; } ;
typedef TYPE_2__ tFileMeta ;
struct TYPE_9__ {int nPageSize; int nMaxSizeInPages; int nElemSize; int numOfElemsPerPage; int pColModel; TYPE_2__ fileMeta; int dataFilePath; } ;
typedef TYPE_3__ tExtMemBuffer ;
struct TYPE_10__ {int numOfCols; int pFields; } ;
typedef TYPE_4__ tColModel ;
typedef int int32_t ;


 int ALIGN8 (int) ;
 void* DEFAULT_PAGE_SIZE ;
 scalar_t__ calloc (int,int) ;
 int strcpy (int ,char const*) ;
 int tColModelCreate (int ,int ,int) ;

void tExtMemBufferCreate(tExtMemBuffer **pMemBuffer, int32_t nBufferSize, int32_t elemSize, const char *tmpDataFilePath,
                         tColModel *pModel) {
  (*pMemBuffer) = (tExtMemBuffer *)calloc(1, sizeof(tExtMemBuffer));

  (*pMemBuffer)->nPageSize = DEFAULT_PAGE_SIZE;
  (*pMemBuffer)->nMaxSizeInPages = ALIGN8(nBufferSize) / (*pMemBuffer)->nPageSize;
  (*pMemBuffer)->nElemSize = elemSize;

  (*pMemBuffer)->numOfElemsPerPage = ((*pMemBuffer)->nPageSize - sizeof(tFilePage)) / (*pMemBuffer)->nElemSize;

  strcpy((*pMemBuffer)->dataFilePath, tmpDataFilePath);

  tFileMeta *pFMeta = &(*pMemBuffer)->fileMeta;

  pFMeta->numOfElemsInFile = 0;
  pFMeta->nFileSize = 0;
  pFMeta->nPageSize = DEFAULT_PAGE_SIZE;

  pFMeta->flushoutData.nAllocSize = 4;
  pFMeta->flushoutData.nLength = 0;
  pFMeta->flushoutData.pFlushoutInfo = (tFlushoutInfo *)calloc(4, sizeof(tFlushoutInfo));

  (*pMemBuffer)->pColModel = tColModelCreate(pModel->pFields, pModel->numOfCols, (*pMemBuffer)->numOfElemsPerPage);
}
