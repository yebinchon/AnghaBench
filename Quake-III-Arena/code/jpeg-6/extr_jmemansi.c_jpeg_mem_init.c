
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_common_ptr ;


 long DEFAULT_MAX_MEM ;

long
jpeg_mem_init (j_common_ptr cinfo)
{
  return DEFAULT_MAX_MEM;
}
