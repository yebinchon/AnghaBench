
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {scalar_t__ file; } ;
typedef scalar_t__ FLAC__uint64 ;
typedef scalar_t__ FLAC__off_t ;
typedef int FLAC__StreamDecoderTellStatus ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_TELL_STATUS_ERROR ;
 int FLAC__STREAM_DECODER_TELL_STATUS_OK ;
 int FLAC__STREAM_DECODER_TELL_STATUS_UNSUPPORTED ;
 scalar_t__ ftello (scalar_t__) ;
 scalar_t__ stdin ;

FLAC__StreamDecoderTellStatus file_tell_callback_(const FLAC__StreamDecoder *decoder, FLAC__uint64 *absolute_byte_offset, void *client_data)
{
 FLAC__off_t pos;
 (void)client_data;

 if(decoder->private_->file == stdin)
  return FLAC__STREAM_DECODER_TELL_STATUS_UNSUPPORTED;
 else if((pos = ftello(decoder->private_->file)) < 0)
  return FLAC__STREAM_DECODER_TELL_STATUS_ERROR;
 else {
  *absolute_byte_offset = (FLAC__uint64)pos;
  return FLAC__STREAM_DECODER_TELL_STATUS_OK;
 }
}
