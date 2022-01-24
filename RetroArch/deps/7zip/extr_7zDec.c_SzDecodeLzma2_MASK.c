#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint64_t ;
struct TYPE_14__ {size_t dicBufSize; size_t dicPos; int /*<<< orphan*/ * dic; } ;
struct TYPE_17__ {TYPE_2__ decoder; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_16__ {TYPE_1__ Props; } ;
struct TYPE_15__ {scalar_t__ (* Skip ) (void*,size_t) ;scalar_t__ (* Look ) (void*,void const**,size_t*) ;} ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  TYPE_3__ ILookInStream ;
typedef  scalar_t__ ELzmaStatus ;
typedef  TYPE_4__ CSzCoderInfo ;
typedef  TYPE_5__ CLzma2Dec ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_FINISH_END ; 
 scalar_t__ LZMA_STATUS_FINISHED_WITH_MARK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,size_t,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_ERROR_DATA ; 
 scalar_t__ SZ_OK ; 
 scalar_t__ FUNC6 (void*,void const**,size_t*) ; 
 scalar_t__ FUNC7 (void*,size_t) ; 

__attribute__((used)) static SRes FUNC8(CSzCoderInfo *coder, uint64_t inSize, ILookInStream *inStream,
    uint8_t *outBuffer, size_t outSize, ISzAlloc *allocMain)
{
  CLzma2Dec state;
  SRes res = SZ_OK;

  FUNC1(&state);
  if (coder->Props.size != 1)
    return SZ_ERROR_DATA;
  FUNC5(FUNC0(&state, coder->Props.data[0], allocMain));
  state.decoder.dic = outBuffer;
  state.decoder.dicBufSize = outSize;
  FUNC4(&state);

  for (;;)
  {
    uint8_t *inBuf = NULL;
    size_t lookahead = (1 << 18);
    if (lookahead > inSize)
      lookahead = (size_t)inSize;
    res = inStream->Look((void *)inStream, (const void **)&inBuf, &lookahead);
    if (res != SZ_OK)
      break;

    {
      size_t inProcessed = (size_t)lookahead, dicPos = state.decoder.dicPos;
      ELzmaStatus status;
      res = FUNC2(&state, outSize, inBuf, &inProcessed, LZMA_FINISH_END, &status);
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

  FUNC3(&state, allocMain);
  return res;
}