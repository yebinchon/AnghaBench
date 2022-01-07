
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* private_; TYPE_1__* protected_; } ;
struct TYPE_6__ {scalar_t__ metadata_filter_ids_count; int metadata_filter; } ;
struct TYPE_5__ {scalar_t__ state; } ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int memset (int ,int ,int) ;

FLAC__bool FLAC__stream_decoder_set_metadata_ignore_all(FLAC__StreamDecoder *decoder)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);
 if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
  return 0;
 memset(decoder->private_->metadata_filter, 0, sizeof(decoder->private_->metadata_filter));
 decoder->private_->metadata_filter_ids_count = 0;
 return 1;
}
