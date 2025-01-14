
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void** high; void** mid; void** low; void* choice2; void* choice; } ;
typedef TYPE_1__ CLenEnc ;


 unsigned int LZMA_NUM_PB_STATES_MAX ;
 unsigned int kLenNumHighSymbols ;
 unsigned int kLenNumLowBits ;
 unsigned int kLenNumMidBits ;
 void* kProbInitValue ;

__attribute__((used)) static void LenEnc_Init(CLenEnc *p)
{
  unsigned i;
  p->choice = p->choice2 = kProbInitValue;
  for (i = 0; i < (LZMA_NUM_PB_STATES_MAX << kLenNumLowBits); i++)
    p->low[i] = kProbInitValue;
  for (i = 0; i < (LZMA_NUM_PB_STATES_MAX << kLenNumMidBits); i++)
    p->mid[i] = kProbInitValue;
  for (i = 0; i < kLenNumHighSymbols; i++)
    p->high[i] = kProbInitValue;
}
