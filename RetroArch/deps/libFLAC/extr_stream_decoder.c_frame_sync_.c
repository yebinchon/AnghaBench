
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {scalar_t__ samples_decoded; int cached; void** header_warmup; void* lookahead; int input; } ;
typedef int FLAC__uint32 ;
typedef void* FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_END_OF_STREAM ;
 int FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ;
 int FLAC__STREAM_DECODER_READ_FRAME ;
 int FLAC__bitreader_bits_left_for_byte_alignment (int ) ;
 int FLAC__bitreader_is_consumed_byte_aligned (int ) ;
 int FLAC__bitreader_read_raw_uint32 (int ,int*,int) ;
 scalar_t__ FLAC__stream_decoder_get_total_samples (TYPE_3__*) ;
 int send_error_to_client_ (TYPE_3__*,int ) ;

FLAC__bool frame_sync_(FLAC__StreamDecoder *decoder)
{
 FLAC__uint32 x;
 FLAC__bool first = 1;



 if(FLAC__stream_decoder_get_total_samples(decoder) > 0) {
  if(decoder->private_->samples_decoded >= FLAC__stream_decoder_get_total_samples(decoder)) {
   decoder->protected_->state = FLAC__STREAM_DECODER_END_OF_STREAM;
   return 1;
  }
 }


 if(!FLAC__bitreader_is_consumed_byte_aligned(decoder->private_->input)) {
  if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__bitreader_bits_left_for_byte_alignment(decoder->private_->input)))
   return 0;
 }

 while(1) {
  if(decoder->private_->cached) {
   x = (FLAC__uint32)decoder->private_->lookahead;
   decoder->private_->cached = 0;
  }
  else {
   if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, 8))
    return 0;
  }
  if(x == 0xff) {
   decoder->private_->header_warmup[0] = (FLAC__byte)x;
   if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, 8))
    return 0;



   if(x == 0xff) {
    decoder->private_->lookahead = (FLAC__byte)x;
    decoder->private_->cached = 1;
   }
   else if(x >> 1 == 0x7c) {
    decoder->private_->header_warmup[1] = (FLAC__byte)x;
    decoder->protected_->state = FLAC__STREAM_DECODER_READ_FRAME;
    return 1;
   }
  }
  if(first) {
   send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
   first = 0;
  }
 }

 return 1;
}
