
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compressed_offset; } ;
typedef TYPE_1__ flac_decoder ;
typedef int FLAC__uint64 ;
typedef int FLAC__StreamDecoderTellStatus ;
typedef int FLAC__StreamDecoder ;


 int FLAC__STREAM_DECODER_TELL_STATUS_OK ;

FLAC__StreamDecoderTellStatus flac_decoder_tell_callback_static(const FLAC__StreamDecoder *decoder, FLAC__uint64 *absolute_byte_offset, void *client_data)
{
 *absolute_byte_offset = ((flac_decoder *)client_data)->compressed_offset;
 return FLAC__STREAM_DECODER_TELL_STATUS_OK;
}
