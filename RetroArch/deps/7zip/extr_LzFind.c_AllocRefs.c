
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* Alloc ) (TYPE_1__*,size_t) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef int CLzRef ;


 scalar_t__ stub1 (TYPE_1__*,size_t) ;

__attribute__((used)) static CLzRef* AllocRefs(size_t num, ISzAlloc *alloc)
{
  size_t sizeInBytes = (size_t)num * sizeof(CLzRef);
  if (sizeInBytes / sizeof(CLzRef) != num)
    return ((void*)0);
  return (CLzRef *)alloc->Alloc(alloc, sizeInBytes);
}
