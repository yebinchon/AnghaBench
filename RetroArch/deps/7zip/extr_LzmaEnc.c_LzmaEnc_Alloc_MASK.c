#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint32_t ;
struct TYPE_21__ {scalar_t__ btMode; unsigned char bigHash; } ;
struct TYPE_18__ {int /*<<< orphan*/ * litProbs; } ;
struct TYPE_20__ {int mtMode; unsigned int lc; unsigned int lp; unsigned int lclp; scalar_t__ dictSize; int /*<<< orphan*/  matchFinder; TYPE_7__ matchFinderBase; TYPE_7__* matchFinderObj; int /*<<< orphan*/  numFastBytes; TYPE_7__ matchFinderMt; TYPE_1__ saveState; int /*<<< orphan*/ * litProbs; int /*<<< orphan*/  fastMode; scalar_t__ multiThread; int /*<<< orphan*/  rc; } ;
struct TYPE_19__ {scalar_t__ (* Alloc ) (TYPE_2__*,unsigned int) ;} ;
typedef  int /*<<< orphan*/  SRes ;
typedef  TYPE_2__ ISzAlloc ;
typedef  int /*<<< orphan*/  CLzmaProb ;
typedef  TYPE_3__ CLzmaEnc ;

/* Variables and functions */
 int /*<<< orphan*/  LZMA_MATCH_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  SZ_ERROR_MEM ; 
 int /*<<< orphan*/  SZ_OK ; 
 scalar_t__ kBigHashDicLimit ; 
 unsigned int kNumOpts ; 
 scalar_t__ FUNC7 (TYPE_2__*,unsigned int) ; 
 scalar_t__ FUNC8 (TYPE_2__*,unsigned int) ; 

__attribute__((used)) static SRes FUNC9(CLzmaEnc *p, uint32_t keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  uint32_t beforeSize = kNumOpts;
  if (!FUNC6(&p->rc, alloc))
    return SZ_ERROR_MEM;

  #ifndef _7ZIP_ST
  p->mtMode = (p->multiThread && !p->fastMode && (p->matchFinderBase.btMode != 0));
  #endif

  {
    unsigned lclp = p->lc + p->lp;
    if (!p->litProbs || !p->saveState.litProbs || p->lclp != lclp)
    {
      FUNC0(p, alloc);
      p->litProbs = (CLzmaProb *)alloc->Alloc(alloc, ((uint32_t)0x300 << lclp) * sizeof(CLzmaProb));
      p->saveState.litProbs = (CLzmaProb *)alloc->Alloc(alloc, ((uint32_t)0x300 << lclp) * sizeof(CLzmaProb));
      if (!p->litProbs || !p->saveState.litProbs)
      {
        FUNC0(p, alloc);
        return SZ_ERROR_MEM;
      }
      p->lclp = lclp;
    }
  }

  p->matchFinderBase.bigHash = (unsigned char)(p->dictSize > kBigHashDicLimit ? 1 : 0);

  if (beforeSize + p->dictSize < keepWindowSize)
    beforeSize = keepWindowSize - p->dictSize;

  #ifndef _7ZIP_ST
  if (p->mtMode)
  {
    FUNC5(FUNC1(&p->matchFinderMt, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig));
    p->matchFinderObj = &p->matchFinderMt;
    FUNC2(&p->matchFinderMt, &p->matchFinder);
  }
  else
  #endif
  {
    if (!FUNC3(&p->matchFinderBase, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig))
      return SZ_ERROR_MEM;
    p->matchFinderObj = &p->matchFinderBase;
    FUNC4(&p->matchFinderBase, &p->matchFinder);
  }

  return SZ_OK;
}