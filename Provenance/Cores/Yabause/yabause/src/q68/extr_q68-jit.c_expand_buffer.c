
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ native_size; void* native_code; TYPE_1__* state; } ;
struct TYPE_4__ {void* (* realloc_func ) (void*,scalar_t__ const) ;} ;
typedef TYPE_2__ Q68JitEntry ;


 int DMSG (char*) ;
 scalar_t__ Q68_JIT_BLOCK_EXPAND_SIZE ;
 void* stub1 (void*,scalar_t__ const) ;

__attribute__((used)) static int expand_buffer(Q68JitEntry *entry)
{
    const uint32_t newsize = entry->native_size + Q68_JIT_BLOCK_EXPAND_SIZE;
    void *newptr = entry->state->realloc_func(entry->native_code, newsize);
    if (!newptr) {
        DMSG("Out of memory");
        return 0;
    }
    entry->native_code = newptr;
    entry->native_size = newsize;
    return 1;
}
