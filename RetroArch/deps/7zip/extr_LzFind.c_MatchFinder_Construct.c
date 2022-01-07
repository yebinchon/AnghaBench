
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* crc; int * hash; scalar_t__ directInput; int * bufferBase; } ;
typedef TYPE_1__ CMatchFinder ;


 int MatchFinder_SetDefaultSettings (TYPE_1__*) ;
 int kCrcPoly ;

void MatchFinder_Construct(CMatchFinder *p)
{
  uint32_t i;
  p->bufferBase = ((void*)0);
  p->directInput = 0;
  p->hash = ((void*)0);
  MatchFinder_SetDefaultSettings(p);

  for (i = 0; i < 256; i++)
  {
    uint32_t r = i;
    unsigned j;
    for (j = 0; j < 8; j++)
      r = (r >> 1) ^ (kCrcPoly & ~((r & 1) - 1));
    p->crc[i] = r;
  }
}
