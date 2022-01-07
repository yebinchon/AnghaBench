
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct stat {scalar_t__ st_size; } ;
typedef int int64_t ;
typedef size_t int32_t ;
typedef int header ;
struct TYPE_16__ {scalar_t__ order; } ;
struct TYPE_19__ {int numOfAlloc; int numOfVnodes; scalar_t__ tsOrder; int autoDelete; TYPE_1__ cur; scalar_t__ fileSize; int * f; TYPE_2__* pData; int path; } ;
struct TYPE_18__ {scalar_t__ magic; int numOfVnode; scalar_t__ tsOrder; int member_0; } ;
struct TYPE_17__ {int info; } ;
typedef TYPE_2__ STSVnodeBlockInfoEx ;
typedef TYPE_3__ STSVnodeBlockInfo ;
typedef TYPE_3__ STSBufFileHeader ;
typedef TYPE_5__ STSBuf ;


 int PATH_MAX ;
 int SEEK_END ;
 int SEEK_SET ;
 scalar_t__ TSQL_SO_ASC ;
 scalar_t__ TSQL_SO_DESC ;
 scalar_t__ TS_COMP_FILE_MAGIC ;
 int * allocResForTSBuf (TYPE_5__*) ;
 TYPE_5__* calloc (int,size_t) ;
 int fileno (int *) ;
 int * fopen (int ,char*) ;
 int fread (TYPE_3__*,size_t,int,int *) ;
 int free (TYPE_3__*) ;
 int fseek (int *,int ,int ) ;
 int fstat (int ,struct stat*) ;
 int ftell (int *) ;
 int memcpy (int *,TYPE_3__*,int) ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 int strncpy (int ,char const*,int ) ;
 int tsBufDestory (TYPE_5__*) ;
 int tsBufResetPos (TYPE_5__*) ;
 int tscError (char*,scalar_t__) ;

STSBuf* tsBufCreateFromFile(const char* path, bool autoDelete) {
  STSBuf* pTSBuf = calloc(1, sizeof(STSBuf));
  if (pTSBuf == ((void*)0)) {
    return ((void*)0);
  }

  strncpy(pTSBuf->path, path, PATH_MAX);

  pTSBuf->f = fopen(pTSBuf->path, "r");
  if (pTSBuf->f == ((void*)0)) {
    return ((void*)0);
  }

  if (allocResForTSBuf(pTSBuf) == ((void*)0)) {
    return ((void*)0);
  }


  STSBufFileHeader header = {0};
  fseek(pTSBuf->f, 0, SEEK_SET);
  fread(&header, 1, sizeof(header), pTSBuf->f);


  if (header.magic != TS_COMP_FILE_MAGIC) {
    return ((void*)0);
  }

  if (header.numOfVnode > pTSBuf->numOfAlloc) {
    pTSBuf->numOfAlloc = header.numOfVnode;
    STSVnodeBlockInfoEx* tmp = realloc(pTSBuf->pData, sizeof(STSVnodeBlockInfoEx) * pTSBuf->numOfAlloc);
    if (tmp == ((void*)0)) {
      tsBufDestory(pTSBuf);
      return ((void*)0);
    }

    pTSBuf->pData = tmp;
  }

  pTSBuf->numOfVnodes = header.numOfVnode;


  pTSBuf->tsOrder = header.tsOrder;
  if (pTSBuf->tsOrder != TSQL_SO_ASC && pTSBuf->tsOrder != TSQL_SO_DESC) {
    tscError("invalid order info in buf:%d", pTSBuf->tsOrder);
    tsBufDestory(pTSBuf);
    return ((void*)0);
  }

  size_t infoSize = sizeof(STSVnodeBlockInfo) * pTSBuf->numOfVnodes;

  STSVnodeBlockInfo* buf = (STSVnodeBlockInfo*)calloc(1, infoSize);
  int64_t pos = ftell(pTSBuf->f);
  fread(buf, infoSize, 1, pTSBuf->f);


  for (int32_t i = 0; i < pTSBuf->numOfVnodes; ++i) {
    STSVnodeBlockInfoEx* pBlockList = &pTSBuf->pData[i];
    memcpy(&pBlockList->info, &buf[i], sizeof(STSVnodeBlockInfo));
  }

  free(buf);

  fseek(pTSBuf->f, 0, SEEK_END);

  struct stat fileStat;
  fstat(fileno(pTSBuf->f), &fileStat);

  pTSBuf->fileSize = (uint32_t) fileStat.st_size;
  tsBufResetPos(pTSBuf);


  pTSBuf->cur.order = TSQL_SO_ASC;

  pTSBuf->autoDelete = autoDelete;
  return pTSBuf;
}
