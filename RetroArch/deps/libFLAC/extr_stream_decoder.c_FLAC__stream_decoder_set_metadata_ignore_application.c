
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* private_; TYPE_1__* protected_; } ;
struct TYPE_6__ {int metadata_filter_ids_count; int metadata_filter_ids_capacity; int * metadata_filter_ids; int * metadata_filter; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef int FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 size_t FLAC__METADATA_TYPE_APPLICATION ;
 scalar_t__ FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int FLAC__STREAM_METADATA_APPLICATION_ID_LEN ;
 int memcpy (int *,int const*,int) ;
 scalar_t__ safe_realloc_mul_2op_ (int *,int,int) ;

FLAC__bool FLAC__stream_decoder_set_metadata_ignore_application(FLAC__StreamDecoder *decoder, const FLAC__byte id[4])
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);
 FLAC__ASSERT(0 != id);
 if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
  return 0;

 if(!decoder->private_->metadata_filter[FLAC__METADATA_TYPE_APPLICATION])
  return 1;

 FLAC__ASSERT(0 != decoder->private_->metadata_filter_ids);

 if(decoder->private_->metadata_filter_ids_count == decoder->private_->metadata_filter_ids_capacity) {
  if(0 == (decoder->private_->metadata_filter_ids = (FLAC__byte*)safe_realloc_mul_2op_(decoder->private_->metadata_filter_ids, decoder->private_->metadata_filter_ids_capacity, 2))) {
   decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
   return 0;
  }
  decoder->private_->metadata_filter_ids_capacity *= 2;
 }

 memcpy(decoder->private_->metadata_filter_ids + decoder->private_->metadata_filter_ids_count * (FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8), id, (FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8));
 decoder->private_->metadata_filter_ids_count++;

 return 1;
}
