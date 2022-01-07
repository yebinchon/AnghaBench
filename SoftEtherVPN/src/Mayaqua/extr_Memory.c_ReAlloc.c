
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int ZeroFree; scalar_t__ Size; int Magic; } ;
typedef TYPE_1__ MEMTAG ;


 int CALC_MALLOCSIZE (scalar_t__) ;
 int CheckMemTag (TYPE_1__*) ;
 int Copy (void*,void*,scalar_t__) ;
 int Free (void*) ;
 scalar_t__ IS_NULL_POINTER (void*) ;
 TYPE_1__* InternalReAlloc (TYPE_1__*,int ) ;
 int MEMTAG_MAGIC ;
 void* MEMTAG_TO_POINTER (TYPE_1__*) ;
 void* MallocEx (scalar_t__,int) ;
 TYPE_1__* POINTER_TO_MEMTAG (void*) ;
 int Zero (TYPE_1__*,int) ;

void *ReAlloc(void *addr, UINT size)
{
 MEMTAG *tag;
 bool zerofree;

 if (IS_NULL_POINTER(addr))
 {
  return ((void*)0);
 }

 tag = POINTER_TO_MEMTAG(addr);
 CheckMemTag(tag);

 zerofree = tag->ZeroFree;

 if (tag->Size == size)
 {

  return addr;
 }
 else
 {
  if (zerofree)
  {

   void *new_p = MallocEx(size, 1);

   if (tag->Size <= size)
   {

    Copy(new_p, addr, tag->Size);
   }
   else
   {

    Copy(new_p, addr, size);
   }


   Free(addr);

   return new_p;
  }
  else
  {

   MEMTAG *tag2 = InternalReAlloc(tag, CALC_MALLOCSIZE(size));

   Zero(tag2, sizeof(MEMTAG));
   tag2->Magic = MEMTAG_MAGIC;
   tag2->Size = size;

   return MEMTAG_TO_POINTER(tag2);
  }
 }
}
