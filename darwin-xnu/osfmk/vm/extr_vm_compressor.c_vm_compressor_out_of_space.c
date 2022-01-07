
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ c_segment_count ;
 scalar_t__ c_segment_pages_compressed ;
 scalar_t__ c_segment_pages_compressed_limit ;
 scalar_t__ c_segments_limit ;

boolean_t
vm_compressor_out_of_space(void)
{
 if ((c_segment_pages_compressed >= c_segment_pages_compressed_limit) ||
     (c_segment_count >= c_segments_limit))
  return (TRUE);

 return (FALSE);
}
