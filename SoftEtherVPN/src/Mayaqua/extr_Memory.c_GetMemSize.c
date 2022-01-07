
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int Size; } ;
typedef TYPE_1__ MEMTAG ;


 int CheckMemTag (TYPE_1__*) ;
 scalar_t__ IS_NULL_POINTER (void*) ;
 TYPE_1__* POINTER_TO_MEMTAG (void*) ;

UINT GetMemSize(void *addr)
{
 MEMTAG *tag;

 if (IS_NULL_POINTER(addr))
 {
  return 0;
 }

 tag = POINTER_TO_MEMTAG(addr);
 CheckMemTag(tag);

 return tag->Size;
}
