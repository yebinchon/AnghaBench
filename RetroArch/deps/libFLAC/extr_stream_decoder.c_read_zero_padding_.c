
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_7__ {int state; } ;
struct TYPE_6__ {int input; } ;
typedef scalar_t__ FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ;
 int FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC ;
 int FLAC__bitreader_bits_left_for_byte_alignment (int ) ;
 int FLAC__bitreader_is_consumed_byte_aligned (int ) ;
 int FLAC__bitreader_read_raw_uint32 (int ,scalar_t__*,int ) ;
 int send_error_to_client_ (TYPE_3__*,int ) ;

FLAC__bool read_zero_padding_(FLAC__StreamDecoder *decoder)
{
 if(!FLAC__bitreader_is_consumed_byte_aligned(decoder->private_->input)) {
  FLAC__uint32 zero = 0;
  if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &zero, FLAC__bitreader_bits_left_for_byte_alignment(decoder->private_->input)))
   return 0;
  if(zero != 0) {
   send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
   decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
  }
 }
 return 1;
}
