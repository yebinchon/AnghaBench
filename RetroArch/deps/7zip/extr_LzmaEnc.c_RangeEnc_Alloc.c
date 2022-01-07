
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* bufBase; unsigned char* bufLim; } ;
struct TYPE_6__ {scalar_t__ (* Alloc ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CRangeEnc ;


 int RC_BUF_SIZE ;
 scalar_t__ stub1 (TYPE_1__*,int) ;

__attribute__((used)) static int RangeEnc_Alloc(CRangeEnc *p, ISzAlloc *alloc)
{
  if (!p->bufBase)
  {
    p->bufBase = (unsigned char *)alloc->Alloc(alloc, RC_BUF_SIZE);
    if (!p->bufBase)
      return 0;
    p->bufLim = p->bufBase + RC_BUF_SIZE;
  }
  return 1;
}
