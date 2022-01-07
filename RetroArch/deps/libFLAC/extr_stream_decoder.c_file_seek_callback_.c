
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {scalar_t__ file; } ;
typedef scalar_t__ FLAC__uint64 ;
typedef int FLAC__off_t ;
typedef int FLAC__StreamDecoderSeekStatus ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_SEEK_STATUS_ERROR ;
 int FLAC__STREAM_DECODER_SEEK_STATUS_OK ;
 int FLAC__STREAM_DECODER_SEEK_STATUS_UNSUPPORTED ;
 int SEEK_SET ;
 scalar_t__ fseeko (scalar_t__,int ,int ) ;
 scalar_t__ stdin ;

FLAC__StreamDecoderSeekStatus file_seek_callback_(const FLAC__StreamDecoder *decoder, FLAC__uint64 absolute_byte_offset, void *client_data)
{
 (void)client_data;

 if(decoder->private_->file == stdin)
  return FLAC__STREAM_DECODER_SEEK_STATUS_UNSUPPORTED;
 else if(fseeko(decoder->private_->file, (FLAC__off_t)absolute_byte_offset, SEEK_SET) < 0)
  return FLAC__STREAM_DECODER_SEEK_STATUS_ERROR;
 else
  return FLAC__STREAM_DECODER_SEEK_STATUS_OK;
}
