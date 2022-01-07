
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int decoder; scalar_t__ compressed_offset; } ;
typedef TYPE_1__ flac_decoder ;


 scalar_t__ FLAC__STREAM_DECODER_INIT_STATUS_OK ;
 scalar_t__ FLAC__stream_decoder_init_stream (int ,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*) ;
 int FLAC__stream_decoder_process_until_end_of_metadata (int ) ;
 int flac_decoder_error_callback_static ;
 int flac_decoder_metadata_callback_static ;
 int flac_decoder_read_callback_static ;
 int flac_decoder_tell_callback_static ;
 int flac_decoder_write_callback_static ;

__attribute__((used)) static int flac_decoder_internal_reset(flac_decoder* decoder)
{
 decoder->compressed_offset = 0;
 if (FLAC__stream_decoder_init_stream(decoder->decoder,
    &flac_decoder_read_callback_static,
    ((void*)0),
    &flac_decoder_tell_callback_static,
    ((void*)0),
    ((void*)0),
    &flac_decoder_write_callback_static,
    &flac_decoder_metadata_callback_static,
    &flac_decoder_error_callback_static, decoder) != FLAC__STREAM_DECODER_INIT_STATUS_OK)
  return 0;
 return FLAC__stream_decoder_process_until_end_of_metadata(decoder->decoder);
}
