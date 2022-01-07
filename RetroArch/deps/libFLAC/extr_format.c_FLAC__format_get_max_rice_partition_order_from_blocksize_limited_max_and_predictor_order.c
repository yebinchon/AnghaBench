
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAC__ASSERT (int) ;

unsigned FLAC__format_get_max_rice_partition_order_from_blocksize_limited_max_and_predictor_order(unsigned limit, unsigned blocksize, unsigned predictor_order)
{
 unsigned max_rice_partition_order = limit;

 while(max_rice_partition_order > 0 && (blocksize >> max_rice_partition_order) <= predictor_order)
  max_rice_partition_order--;

 FLAC__ASSERT(
  (max_rice_partition_order == 0 && blocksize >= predictor_order) ||
  (max_rice_partition_order > 0 && blocksize >> max_rice_partition_order > predictor_order)
 );

 return max_rice_partition_order;
}
