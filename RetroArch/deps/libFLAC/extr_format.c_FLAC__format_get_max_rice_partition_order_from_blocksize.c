
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAC__MAX_RICE_PARTITION_ORDER ;
 int MIN (int ,unsigned int) ;

unsigned FLAC__format_get_max_rice_partition_order_from_blocksize(unsigned blocksize)
{
 unsigned max_rice_partition_order = 0;
 while(!(blocksize & 1)) {
  max_rice_partition_order++;
  blocksize >>= 1;
 }
 return MIN(FLAC__MAX_RICE_PARTITION_ORDER, max_rice_partition_order);
}
