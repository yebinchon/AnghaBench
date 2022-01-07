
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parameters; scalar_t__ raw_bits; } ;
typedef TYPE_1__ FLAC__EntropyCodingMethod_PartitionedRiceContents ;


 int FLAC__ASSERT (int) ;
 int FLAC__format_entropy_coding_method_partitioned_rice_contents_init (TYPE_1__*) ;
 int free (scalar_t__) ;

void FLAC__format_entropy_coding_method_partitioned_rice_contents_clear(FLAC__EntropyCodingMethod_PartitionedRiceContents *object)
{
 FLAC__ASSERT(0 != object);

 if(0 != object->parameters)
  free(object->parameters);
 if(0 != object->raw_bits)
  free(object->raw_bits);
 FLAC__format_entropy_coding_method_partitioned_rice_contents_init(object);
}
