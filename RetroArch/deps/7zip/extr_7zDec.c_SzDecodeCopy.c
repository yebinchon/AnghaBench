
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int (* Skip ) (void*,size_t) ;int (* Look ) (void*,void const**,size_t*) ;} ;
typedef int SRes ;
typedef TYPE_1__ ILookInStream ;


 int RINOK (int ) ;
 int SZ_ERROR_INPUT_EOF ;
 int SZ_OK ;
 int memcpy (int *,void*,size_t) ;
 int stub1 (void*,void const**,size_t*) ;
 int stub2 (void*,size_t) ;

__attribute__((used)) static SRes SzDecodeCopy(uint64_t inSize, ILookInStream *inStream, uint8_t *outBuffer)
{
  while (inSize > 0)
  {
    void *inBuf;
    size_t curSize = (1 << 18);
    if (curSize > inSize)
      curSize = (size_t)inSize;
    RINOK(inStream->Look((void *)inStream, (const void **)&inBuf, &curSize));
    if (curSize == 0)
      return SZ_ERROR_INPUT_EOF;
    memcpy(outBuffer, inBuf, curSize);
    outBuffer += curSize;
    inSize -= curSize;
    RINOK(inStream->Skip((void *)inStream, curSize));
  }
  return SZ_OK;
}
