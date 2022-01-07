
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct flac_stat_s {scalar_t__ st_size; } ;
struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {scalar_t__ file; } ;
typedef scalar_t__ FLAC__uint64 ;
typedef int FLAC__StreamDecoderLengthStatus ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_LENGTH_STATUS_ERROR ;
 int FLAC__STREAM_DECODER_LENGTH_STATUS_OK ;
 int FLAC__STREAM_DECODER_LENGTH_STATUS_UNSUPPORTED ;
 int fileno (scalar_t__) ;
 scalar_t__ flac_fstat (int ,struct flac_stat_s*) ;
 scalar_t__ stdin ;

FLAC__StreamDecoderLengthStatus file_length_callback_(const FLAC__StreamDecoder *decoder, FLAC__uint64 *stream_length, void *client_data)
{
 struct flac_stat_s filestats;
 (void)client_data;

 if(decoder->private_->file == stdin)
  return FLAC__STREAM_DECODER_LENGTH_STATUS_UNSUPPORTED;
 else if(flac_fstat(fileno(decoder->private_->file), &filestats) != 0)
  return FLAC__STREAM_DECODER_LENGTH_STATUS_ERROR;
 else {
  *stream_length = (FLAC__uint64)filestats.st_size;
  return FLAC__STREAM_DECODER_LENGTH_STATUS_OK;
 }
}
