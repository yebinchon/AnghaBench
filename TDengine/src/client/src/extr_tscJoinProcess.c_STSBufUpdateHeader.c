
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_7__ {int * f; } ;
struct TYPE_6__ {scalar_t__ numOfVnode; scalar_t__ magic; } ;
typedef TYPE_1__ STSBufFileHeader ;
typedef TYPE_2__ STSBuf ;


 int SEEK_SET ;
 scalar_t__ TS_COMP_FILE_MAGIC ;
 scalar_t__ fseek (int *,int ,int ) ;
 int fwrite (TYPE_1__*,int,int,int *) ;

int32_t STSBufUpdateHeader(STSBuf* pTSBuf, STSBufFileHeader* pHeader) {
  if ((pTSBuf->f == ((void*)0)) || pHeader == ((void*)0) || pHeader->numOfVnode < 0 || pHeader->magic != TS_COMP_FILE_MAGIC) {
    return -1;
  }

  int64_t r = fseek(pTSBuf->f, 0, SEEK_SET);
  if (r != 0) {
    return -1;
  }

  fwrite(pHeader, sizeof(STSBufFileHeader), 1, pTSBuf->f);
  return 0;
}
