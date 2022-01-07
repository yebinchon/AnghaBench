
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PAGE_SIZE_64 ;
 int c_segment_pages_compressed ;

uint64_t
vm_compressor_pages_compressed(void)
{
 return (c_segment_pages_compressed * PAGE_SIZE_64);
}
