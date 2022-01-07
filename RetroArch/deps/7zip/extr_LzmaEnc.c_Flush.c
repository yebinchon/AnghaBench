
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int finished; int pbMask; int rc; scalar_t__ writeEndMark; } ;
typedef int SRes ;
typedef TYPE_1__ CLzmaEnc ;


 int CheckErrors (TYPE_1__*) ;
 int RangeEnc_FlushData (int *) ;
 int RangeEnc_FlushStream (int *) ;
 int WriteEndMarker (TYPE_1__*,int) ;

__attribute__((used)) static SRes Flush(CLzmaEnc *p, uint32_t nowPos)
{

  p->finished = 1;
  if (p->writeEndMark)
    WriteEndMarker(p, nowPos & p->pbMask);
  RangeEnc_FlushData(&p->rc);
  RangeEnc_FlushStream(&p->rc);
  return CheckErrors(p);
}
