
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_common_ptr ;



long
jpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed,
      long max_bytes_needed, long already_allocated)
{
  return max_bytes_needed;
}
