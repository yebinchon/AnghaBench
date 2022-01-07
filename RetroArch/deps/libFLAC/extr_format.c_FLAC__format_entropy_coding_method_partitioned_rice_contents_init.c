
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ capacity_by_order; scalar_t__ raw_bits; scalar_t__ parameters; } ;
typedef TYPE_1__ FLAC__EntropyCodingMethod_PartitionedRiceContents ;


 int FLAC__ASSERT (int) ;

void FLAC__format_entropy_coding_method_partitioned_rice_contents_init(FLAC__EntropyCodingMethod_PartitionedRiceContents *object)
{
 FLAC__ASSERT(0 != object);

 object->parameters = 0;
 object->raw_bits = 0;
 object->capacity_by_order = 0;
}
