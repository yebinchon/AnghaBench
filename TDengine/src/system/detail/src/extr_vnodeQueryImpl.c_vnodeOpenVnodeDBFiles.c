
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int int32_t ;
typedef int __off_t ;
struct TYPE_3__ {int fileID; int headerFd; int dataFd; int lastFd; int * pDataFileData; int defaultMappingSize; int * pHeaderFileData; int headFileSize; int dataFilePath; int dtFileMappingOffset; int lastFileSize; int lastFilePath; int dataFileSize; int headerFilePath; } ;
typedef TYPE_1__ SQueryFileInfo ;
typedef int SQInfo ;


 int DEFAULT_DATA_FILE_MMAP_WINDOW_SIZE ;
 int MADV_SEQUENTIAL ;
 int * MAP_FAILED ;
 int MAP_POPULATE ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int O_RDONLY ;
 int PROT_READ ;
 int VALIDFD (int) ;
 int dError (char*,int *,int ,...) ;
 int errno ;
 int fileHandleHashList ;
 int madvise (int *,int ,int ) ;
 void* mmap (int *,int ,int ,int,int,int ) ;
 int munmap (int *,int ) ;
 void* open (int ,int ) ;
 int snprintf (int ,int,char*,char*,...) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strerror (int ) ;
 int taosAddStrHash (int ,int ,char*) ;
 scalar_t__ taosGetStrHashData (int ,int ) ;
 int tclose (int) ;

__attribute__((used)) static int32_t vnodeOpenVnodeDBFiles(SQInfo *pQInfo, SQueryFileInfo *pVnodeFiles, int32_t fid, int32_t vnodeId,
                                     char *fileName, char *prefix) {
  __off_t size = 0;

  pVnodeFiles->fileID = fid;
  pVnodeFiles->defaultMappingSize = DEFAULT_DATA_FILE_MMAP_WINDOW_SIZE;

  snprintf(pVnodeFiles->headerFilePath, 256, "%s%s", prefix, fileName);


  pVnodeFiles->headerFd = open(pVnodeFiles->headerFilePath, O_RDONLY);
  if (!VALIDFD(pVnodeFiles->headerFd)) {
    dError("QInfo:%p failed open header file:%s reason:%s", pQInfo, pVnodeFiles->headerFilePath, strerror(errno));
    goto _clean;
  }

  struct stat fstat;
  if (stat(pVnodeFiles->headerFilePath, &fstat) < 0) return -1;
  pVnodeFiles->headFileSize = fstat.st_size;
  size = fstat.st_size;

  pVnodeFiles->pHeaderFileData = mmap(((void*)0), size, PROT_READ, MAP_SHARED, pVnodeFiles->headerFd, 0);
  if (pVnodeFiles->pHeaderFileData == MAP_FAILED) {
    dError("QInfo:%p failed to map header file:%s, %s", pQInfo, pVnodeFiles->headerFilePath, strerror(errno));
    goto _clean;
  }


  if (madvise(pVnodeFiles->pHeaderFileData, size, MADV_SEQUENTIAL) == -1) {
    dError("QInfo:%p failed to advise kernel the usage of header files, reason:%s", pQInfo, strerror(errno));
  }

  snprintf(pVnodeFiles->dataFilePath, 256, "%sv%df%d.data", prefix, vnodeId, fid);
  snprintf(pVnodeFiles->lastFilePath, 256, "%sv%df%d.last", prefix, vnodeId, fid);


  pVnodeFiles->dataFd = open(pVnodeFiles->dataFilePath, O_RDONLY);
  pVnodeFiles->lastFd = open(pVnodeFiles->lastFilePath, O_RDONLY);
  if (!VALIDFD(pVnodeFiles->dataFd)) {
    dError("QInfo:%p failed to open data file:%s, reason:%s", pQInfo, pVnodeFiles->dataFilePath, strerror(errno));
    goto _clean;
  }

  if (!VALIDFD(pVnodeFiles->lastFd)) {
    dError("QInfo:%p failed to open last file:%s, reason:%s", pQInfo, pVnodeFiles->lastFilePath, strerror(errno));
    goto _clean;
  }

  if (stat(pVnodeFiles->dataFilePath, &fstat) < 0) return -1;
  pVnodeFiles->dataFileSize = fstat.st_size;

  if (stat(pVnodeFiles->lastFilePath, &fstat) < 0) return -1;
  pVnodeFiles->lastFileSize = fstat.st_size;



  pVnodeFiles->pDataFileData = mmap(((void*)0), pVnodeFiles->defaultMappingSize, PROT_READ, MAP_PRIVATE | MAP_POPULATE,
                                    pVnodeFiles->dataFd, pVnodeFiles->dtFileMappingOffset);
  if (pVnodeFiles->pDataFileData == MAP_FAILED) {
    dError("QInfo:%p failed to map data file:%s, %s", pQInfo, pVnodeFiles->dataFilePath, strerror(errno));
    goto _clean;
  }


  if (madvise(pVnodeFiles->pDataFileData, pVnodeFiles->defaultMappingSize, MADV_SEQUENTIAL) == -1) {
    dError("QInfo:%p failed to advise kernel the usage of data file:%s, reason:%s", pQInfo, pVnodeFiles->dataFilePath,
           strerror(errno));
  }


  return 0;

_clean:
  if (pVnodeFiles->pHeaderFileData != MAP_FAILED && pVnodeFiles->pDataFileData != ((void*)0)) {
    munmap(pVnodeFiles->pHeaderFileData, pVnodeFiles->headFileSize);
    pVnodeFiles->pHeaderFileData = ((void*)0);
  }


  if (pVnodeFiles->pDataFileData != MAP_FAILED && pVnodeFiles->pDataFileData != ((void*)0)) {
    munmap(pVnodeFiles->pDataFileData, pVnodeFiles->defaultMappingSize);
    pVnodeFiles->pDataFileData = ((void*)0);
  }


  tclose(pVnodeFiles->headerFd);
  tclose(pVnodeFiles->dataFd);
  tclose(pVnodeFiles->lastFd);
  return -1;
}
