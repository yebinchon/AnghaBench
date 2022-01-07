
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_5__ {TYPE_1__* mem; } ;
struct TYPE_4__ {long max_memory_to_use; } ;



long
jpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed,
      long max_bytes_needed, long already_allocated)
{
  return cinfo->mem->max_memory_to_use - already_allocated;
}
