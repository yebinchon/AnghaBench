
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int capacity_by_order; unsigned int* parameters; unsigned int* raw_bits; } ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__EntropyCodingMethod_PartitionedRiceContents ;


 int FLAC__ASSERT (int) ;
 int memset (unsigned int*,int ,int) ;
 scalar_t__ safe_realloc_ (unsigned int*,int) ;

FLAC__bool FLAC__format_entropy_coding_method_partitioned_rice_contents_ensure_size(FLAC__EntropyCodingMethod_PartitionedRiceContents *object, unsigned max_partition_order)
{
 FLAC__ASSERT(0 != object);

 FLAC__ASSERT(object->capacity_by_order > 0 || (0 == object->parameters && 0 == object->raw_bits));

 if(object->capacity_by_order < max_partition_order) {
  if(0 == (object->parameters = (unsigned int*)safe_realloc_(object->parameters, sizeof(unsigned)*(1 << max_partition_order))))
   return 0;
  if(0 == (object->raw_bits = (unsigned int*)safe_realloc_(object->raw_bits, sizeof(unsigned)*(1 << max_partition_order))))
   return 0;
  memset(object->raw_bits, 0, sizeof(unsigned)*(1 << max_partition_order));
  object->capacity_by_order = max_partition_order;
 }

 return 1;
}
