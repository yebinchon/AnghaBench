
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
struct TYPE_14__ {size_t dicBufSize; size_t dicPos; int * dic; } ;
struct TYPE_17__ {TYPE_2__ decoder; } ;
struct TYPE_13__ {int size; int * data; } ;
struct TYPE_16__ {TYPE_1__ Props; } ;
struct TYPE_15__ {scalar_t__ (* Skip ) (void*,size_t) ;scalar_t__ (* Look ) (void*,void const**,size_t*) ;} ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef TYPE_3__ ILookInStream ;
typedef scalar_t__ ELzmaStatus ;
typedef TYPE_4__ CSzCoderInfo ;
typedef TYPE_5__ CLzma2Dec ;


 int LZMA_FINISH_END ;
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ;
 int Lzma2Dec_AllocateProbs (TYPE_5__*,int ,int *) ;
 int Lzma2Dec_Construct (TYPE_5__*) ;
 scalar_t__ Lzma2Dec_DecodeToDic (TYPE_5__*,size_t,int *,size_t*,int ,scalar_t__*) ;
 int Lzma2Dec_FreeProbs (TYPE_5__*,int *) ;
 int Lzma2Dec_Init (TYPE_5__*) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_DATA ;
 scalar_t__ SZ_OK ;
 scalar_t__ stub1 (void*,void const**,size_t*) ;
 scalar_t__ stub2 (void*,size_t) ;

__attribute__((used)) static SRes SzDecodeLzma2(CSzCoderInfo *coder, uint64_t inSize, ILookInStream *inStream,
    uint8_t *outBuffer, size_t outSize, ISzAlloc *allocMain)
{
  CLzma2Dec state;
  SRes res = SZ_OK;

  Lzma2Dec_Construct(&state);
  if (coder->Props.size != 1)
    return SZ_ERROR_DATA;
  RINOK(Lzma2Dec_AllocateProbs(&state, coder->Props.data[0], allocMain));
  state.decoder.dic = outBuffer;
  state.decoder.dicBufSize = outSize;
  Lzma2Dec_Init(&state);

  for (;;)
  {
    uint8_t *inBuf = ((void*)0);
    size_t lookahead = (1 << 18);
    if (lookahead > inSize)
      lookahead = (size_t)inSize;
    res = inStream->Look((void *)inStream, (const void **)&inBuf, &lookahead);
    if (res != SZ_OK)
      break;

    {
      size_t inProcessed = (size_t)lookahead, dicPos = state.decoder.dicPos;
      ELzmaStatus status;
      res = Lzma2Dec_DecodeToDic(&state, outSize, inBuf, &inProcessed, LZMA_FINISH_END, &status);
      lookahead -= inProcessed;
      inSize -= inProcessed;
      if (res != SZ_OK)
        break;
      if (state.decoder.dicPos == state.decoder.dicBufSize || (inProcessed == 0 && dicPos == state.decoder.dicPos))
      {
        if (state.decoder.dicBufSize != outSize || lookahead != 0 ||
            (status != LZMA_STATUS_FINISHED_WITH_MARK))
          res = SZ_ERROR_DATA;
        break;
      }
      res = inStream->Skip((void *)inStream, inProcessed);
      if (res != SZ_OK)
        break;
    }
  }

  Lzma2Dec_FreeProbs(&state, allocMain);
  return res;
}
