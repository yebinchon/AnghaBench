
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ Magic; int Size; scalar_t__ ZeroFree; } ;
typedef TYPE_1__ MEMTAG ;


 int CheckMemTag (TYPE_1__*) ;
 scalar_t__ IS_NULL_POINTER (void*) ;
 int InternalFree (TYPE_1__*) ;
 TYPE_1__* POINTER_TO_MEMTAG (void*) ;
 int Zero (void*,int ) ;

void Free(void *addr)
{
 MEMTAG *tag;

 if (IS_NULL_POINTER(addr))
 {
  return;
 }

 tag = POINTER_TO_MEMTAG(addr);
 CheckMemTag(tag);

 if (tag->ZeroFree)
 {

  Zero(addr, tag->Size);
 }


 tag->Magic = 0;
 InternalFree(tag);
}
