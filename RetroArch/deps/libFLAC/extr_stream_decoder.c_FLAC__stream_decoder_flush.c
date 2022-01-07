
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_6__ {scalar_t__ state; int ogg_decoder_aspect; } ;
struct TYPE_5__ {int do_md5_checking; int input; scalar_t__ is_ogg; scalar_t__ samples_decoded; int internal_reset_hack; } ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 scalar_t__ FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR ;
 scalar_t__ FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int FLAC__bitreader_clear (int ) ;
 int FLAC__ogg_decoder_aspect_flush (int *) ;

FLAC__bool FLAC__stream_decoder_flush(FLAC__StreamDecoder *decoder)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);

 if(!decoder->private_->internal_reset_hack && decoder->protected_->state == FLAC__STREAM_DECODER_UNINITIALIZED)
  return 0;

 decoder->private_->samples_decoded = 0;
 decoder->private_->do_md5_checking = 0;






 if(!FLAC__bitreader_clear(decoder->private_->input)) {
  decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
  return 0;
 }
 decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;

 return 1;
}
