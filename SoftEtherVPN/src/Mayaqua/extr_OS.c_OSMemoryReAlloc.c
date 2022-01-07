
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {void* (* MemoryReAlloc ) (void*,int ) ;} ;


 TYPE_1__* os ;
 void* stub1 (void*,int ) ;

void *OSMemoryReAlloc(void *addr, UINT size)
{
 return os->MemoryReAlloc(addr, size);
}
