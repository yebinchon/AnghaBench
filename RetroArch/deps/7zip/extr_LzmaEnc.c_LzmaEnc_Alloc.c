
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_21__ {scalar_t__ btMode; unsigned char bigHash; } ;
struct TYPE_18__ {int * litProbs; } ;
struct TYPE_20__ {int mtMode; unsigned int lc; unsigned int lp; unsigned int lclp; scalar_t__ dictSize; int matchFinder; TYPE_7__ matchFinderBase; TYPE_7__* matchFinderObj; int numFastBytes; TYPE_7__ matchFinderMt; TYPE_1__ saveState; int * litProbs; int fastMode; scalar_t__ multiThread; int rc; } ;
struct TYPE_19__ {scalar_t__ (* Alloc ) (TYPE_2__*,unsigned int) ;} ;
typedef int SRes ;
typedef TYPE_2__ ISzAlloc ;
typedef int CLzmaProb ;
typedef TYPE_3__ CLzmaEnc ;


 int LZMA_MATCH_LEN_MAX ;
 int LzmaEnc_FreeLits (TYPE_3__*,TYPE_2__*) ;
 int MatchFinderMt_Create (TYPE_7__*,unsigned int,unsigned int,int ,int ,TYPE_2__*) ;
 int MatchFinderMt_CreateVTable (TYPE_7__*,int *) ;
 int MatchFinder_Create (TYPE_7__*,unsigned int,unsigned int,int ,int ,TYPE_2__*) ;
 int MatchFinder_CreateVTable (TYPE_7__*,int *) ;
 int RINOK (int ) ;
 int RangeEnc_Alloc (int *,TYPE_2__*) ;
 int SZ_ERROR_MEM ;
 int SZ_OK ;
 scalar_t__ kBigHashDicLimit ;
 unsigned int kNumOpts ;
 scalar_t__ stub1 (TYPE_2__*,unsigned int) ;
 scalar_t__ stub2 (TYPE_2__*,unsigned int) ;

__attribute__((used)) static SRes LzmaEnc_Alloc(CLzmaEnc *p, uint32_t keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  uint32_t beforeSize = kNumOpts;
  if (!RangeEnc_Alloc(&p->rc, alloc))
    return SZ_ERROR_MEM;


  p->mtMode = (p->multiThread && !p->fastMode && (p->matchFinderBase.btMode != 0));


  {
    unsigned lclp = p->lc + p->lp;
    if (!p->litProbs || !p->saveState.litProbs || p->lclp != lclp)
    {
      LzmaEnc_FreeLits(p, alloc);
      p->litProbs = (CLzmaProb *)alloc->Alloc(alloc, ((uint32_t)0x300 << lclp) * sizeof(CLzmaProb));
      p->saveState.litProbs = (CLzmaProb *)alloc->Alloc(alloc, ((uint32_t)0x300 << lclp) * sizeof(CLzmaProb));
      if (!p->litProbs || !p->saveState.litProbs)
      {
        LzmaEnc_FreeLits(p, alloc);
        return SZ_ERROR_MEM;
      }
      p->lclp = lclp;
    }
  }

  p->matchFinderBase.bigHash = (unsigned char)(p->dictSize > kBigHashDicLimit ? 1 : 0);

  if (beforeSize + p->dictSize < keepWindowSize)
    beforeSize = keepWindowSize - p->dictSize;


  if (p->mtMode)
  {
    RINOK(MatchFinderMt_Create(&p->matchFinderMt, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig));
    p->matchFinderObj = &p->matchFinderMt;
    MatchFinderMt_CreateVTable(&p->matchFinderMt, &p->matchFinder);
  }
  else

  {
    if (!MatchFinder_Create(&p->matchFinderBase, p->dictSize, beforeSize, p->numFastBytes, LZMA_MATCH_LEN_MAX, allocBig))
      return SZ_ERROR_MEM;
    p->matchFinderObj = &p->matchFinderBase;
    MatchFinder_CreateVTable(&p->matchFinderBase, &p->matchFinder);
  }

  return SZ_OK;
}
