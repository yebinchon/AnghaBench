#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  p; } ;
struct TYPE_5__ {int /*<<< orphan*/  p; } ;
struct TYPE_7__ {size_t lp; size_t lc; int pbMask; int pb; int lpMask; scalar_t__ additionalOffset; scalar_t__ optimumCurrentIndex; scalar_t__ optimumEndIndex; void** posAlignEncoder; TYPE_2__ repLenEnc; TYPE_1__ lenEnc; void** posEncoders; void*** posSlotEncoder; void** litProbs; void** isRepG2; void** isRepG1; void** isRepG0; void** isRep; void*** isRep0Long; void*** isMatch; int /*<<< orphan*/  rc; scalar_t__* reps; scalar_t__ state; } ;
typedef  void* CLzmaProb ;
typedef  TYPE_3__ CLzmaEnc ;

/* Variables and functions */
 size_t LZMA_NUM_PB_STATES_MAX ; 
 size_t LZMA_NUM_REPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t kEndPosModelIndex ; 
 int kNumAlignBits ; 
 size_t kNumFullDistances ; 
 size_t kNumLenToPosStates ; 
 int kNumPosSlotBits ; 
 size_t kNumStates ; 
 void* kProbInitValue ; 

void FUNC2(CLzmaEnc *p)
{
  uint32_t i;
  p->state = 0;
  for (i = 0 ; i < LZMA_NUM_REPS; i++)
    p->reps[i] = 0;

  FUNC1(&p->rc);


  for (i = 0; i < kNumStates; i++)
  {
    uint32_t j;
    for (j = 0; j < LZMA_NUM_PB_STATES_MAX; j++)
    {
      p->isMatch[i][j] = kProbInitValue;
      p->isRep0Long[i][j] = kProbInitValue;
    }
    p->isRep[i] = kProbInitValue;
    p->isRepG0[i] = kProbInitValue;
    p->isRepG1[i] = kProbInitValue;
    p->isRepG2[i] = kProbInitValue;
  }

  {
    uint32_t num = (uint32_t)0x300 << (p->lp + p->lc);
    CLzmaProb *probs = p->litProbs;
    for (i = 0; i < num; i++)
      probs[i] = kProbInitValue;
  }

  {
    for (i = 0; i < kNumLenToPosStates; i++)
    {
      CLzmaProb *probs = p->posSlotEncoder[i];
      uint32_t j;
      for (j = 0; j < (1 << kNumPosSlotBits); j++)
        probs[j] = kProbInitValue;
    }
  }
  {
    for (i = 0; i < kNumFullDistances - kEndPosModelIndex; i++)
      p->posEncoders[i] = kProbInitValue;
  }

  FUNC0(&p->lenEnc.p);
  FUNC0(&p->repLenEnc.p);

  for (i = 0; i < (1 << kNumAlignBits); i++)
    p->posAlignEncoder[i] = kProbInitValue;

  p->optimumEndIndex = 0;
  p->optimumCurrentIndex = 0;
  p->additionalOffset = 0;

  p->pbMask = (1 << p->pb) - 1;
  p->lpMask = (1 << p->lp) - 1;
}