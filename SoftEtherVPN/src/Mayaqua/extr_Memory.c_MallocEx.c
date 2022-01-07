
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {int ZeroFree; int Size; int Magic; } ;
typedef TYPE_1__ MEMTAG ;


 int CALC_MALLOCSIZE (int ) ;
 TYPE_1__* InternalMalloc (int ) ;
 int MEMTAG_MAGIC ;
 void* MEMTAG_TO_POINTER (TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

void *MallocEx(UINT size, bool zero_clear_when_free)
{
 MEMTAG *tag;
 UINT real_size;

 real_size = CALC_MALLOCSIZE(size);

 tag = InternalMalloc(real_size);

 Zero(tag, sizeof(MEMTAG));
 tag->Magic = MEMTAG_MAGIC;
 tag->Size = size;
 tag->ZeroFree = zero_clear_when_free;

 return MEMTAG_TO_POINTER(tag);
}
