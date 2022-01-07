
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_3__ {int numOfPages; int bufSize; int meterOutputFd; int meterOutputMMapBuf; } ;
typedef TYPE_1__ SMeterQuerySupportObj ;


 int DEFAULT_INTERN_BUF_SIZE ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int assert (int) ;
 scalar_t__ ftruncate (int ,int) ;
 int mmap (int *,int,int,int ,int ,int ) ;
 scalar_t__ munmap (int ,int) ;
 int perror (char*) ;

__attribute__((used)) static void extendDiskBuf(SMeterQuerySupportObj *pSupporter, int32_t numOfPages) {
  assert(pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE == pSupporter->bufSize);

  int32_t ret = munmap(pSupporter->meterOutputMMapBuf, pSupporter->bufSize);
  pSupporter->numOfPages = numOfPages;


  ret = ftruncate(pSupporter->meterOutputFd, pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE);
  if (ret != 0) {
    perror("error in allocate the disk-based buffer");
    return;
  }

  pSupporter->bufSize = pSupporter->numOfPages * DEFAULT_INTERN_BUF_SIZE;
  pSupporter->meterOutputMMapBuf =
      mmap(((void*)0), pSupporter->bufSize, PROT_READ | PROT_WRITE, MAP_SHARED, pSupporter->meterOutputFd, 0);
}
