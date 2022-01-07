
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__int32 ;
typedef int FLAC__StreamDecoderWriteStatus ;
typedef int FLAC__StreamDecoder ;
typedef int FLAC__Frame ;


 int flac_decoder_write_callback (void*,int const*,int const* const*) ;

FLAC__StreamDecoderWriteStatus flac_decoder_write_callback_static(const FLAC__StreamDecoder *decoder, const FLAC__Frame *frame, const FLAC__int32 * const buffer[], void *client_data)
{
 return flac_decoder_write_callback(client_data, frame, buffer);
}
