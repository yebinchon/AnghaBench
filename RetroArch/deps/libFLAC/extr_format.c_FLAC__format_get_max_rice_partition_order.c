
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAC__format_get_max_rice_partition_order_from_blocksize (unsigned int) ;
 int FLAC__format_get_max_rice_partition_order_from_blocksize_limited_max_and_predictor_order (int ,unsigned int,unsigned int) ;

unsigned FLAC__format_get_max_rice_partition_order(unsigned blocksize, unsigned predictor_order)
{
 return
  FLAC__format_get_max_rice_partition_order_from_blocksize_limited_max_and_predictor_order(
   FLAC__format_get_max_rice_partition_order_from_blocksize(blocksize),
   blocksize,
   predictor_order
  );
}
