
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {size_t dicSize; } ;
struct TYPE_5__ {scalar_t__ checkDicSize; size_t processedPos; TYPE_1__ prop; scalar_t__ dicPos; scalar_t__ dic; } ;
typedef TYPE_2__ CLzmaDec ;


 int memcpy (scalar_t__,int const*,size_t) ;

__attribute__((used)) static void LzmaDec_UpdateWithUncompressed(CLzmaDec *p, const uint8_t *src, size_t size)
{
   memcpy(p->dic + p->dicPos, src, size);
   p->dicPos += size;
   if (p->checkDicSize == 0 && p->prop.dicSize - p->processedPos <= size)
      p->checkDicSize = p->prop.dicSize;
   p->processedPos += (uint32_t)size;
}
