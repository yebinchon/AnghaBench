
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* private_; TYPE_2__* protected_; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int* metadata_filter; scalar_t__ metadata_filter_ids_count; } ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;
typedef size_t FLAC__MetadataType ;


 int FLAC__ASSERT (int) ;
 unsigned int FLAC__MAX_METADATA_TYPE_CODE ;
 size_t FLAC__METADATA_TYPE_APPLICATION ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;

FLAC__bool FLAC__stream_decoder_set_metadata_respond(FLAC__StreamDecoder *decoder, FLAC__MetadataType type)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);
 FLAC__ASSERT((unsigned)type <= FLAC__MAX_METADATA_TYPE_CODE);

 if((unsigned)type > FLAC__MAX_METADATA_TYPE_CODE)
  return 0;
 if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
  return 0;
 decoder->private_->metadata_filter[type] = 1;
 if(type == FLAC__METADATA_TYPE_APPLICATION)
  decoder->private_->metadata_filter_ids_count = 0;
 return 1;
}
