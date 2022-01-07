
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {size_t metadata_filter_ids_count; scalar_t__ metadata_filter_ids; } ;
typedef int FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 int FLAC__STREAM_METADATA_APPLICATION_ID_LEN ;
 scalar_t__ memcmp (scalar_t__,int *,int) ;

FLAC__bool has_id_filtered_(FLAC__StreamDecoder *decoder, FLAC__byte *id)
{
 size_t i;

 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);

 for(i = 0; i < decoder->private_->metadata_filter_ids_count; i++)
  if(0 == memcmp(decoder->private_->metadata_filter_ids + i * (FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8), id, (FLAC__STREAM_METADATA_APPLICATION_ID_LEN/8)))
   return 1;

 return 0;
}
