
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {int file; } ;
typedef int FLAC__byte ;
typedef int FLAC__StreamDecoderReadStatus ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_READ_STATUS_ABORT ;
 int FLAC__STREAM_DECODER_READ_STATUS_CONTINUE ;
 int FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM ;
 scalar_t__ ferror (int ) ;
 size_t fread (int *,int,size_t,int ) ;

FLAC__StreamDecoderReadStatus file_read_callback_(const FLAC__StreamDecoder *decoder, FLAC__byte buffer[], size_t *bytes, void *client_data)
{
 (void)client_data;

 if(*bytes > 0) {
  *bytes = fread(buffer, sizeof(FLAC__byte), *bytes, decoder->private_->file);
  if(ferror(decoder->private_->file))
   return FLAC__STREAM_DECODER_READ_STATUS_ABORT;
  else if(*bytes == 0)
   return FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM;
  else
   return FLAC__STREAM_DECODER_READ_STATUS_CONTINUE;
 }
 else
  return FLAC__STREAM_DECODER_READ_STATUS_ABORT;
}
