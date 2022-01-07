
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__byte ;
typedef int FLAC__StreamDecoderReadStatus ;
typedef int FLAC__StreamDecoder ;


 int flac_decoder_read_callback (void*,int *,size_t*) ;

FLAC__StreamDecoderReadStatus flac_decoder_read_callback_static(const FLAC__StreamDecoder *decoder, FLAC__byte buffer[], size_t *bytes, void *client_data)
{
 return flac_decoder_read_callback(client_data, buffer, bytes);
}
