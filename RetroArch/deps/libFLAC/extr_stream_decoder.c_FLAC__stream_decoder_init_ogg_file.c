
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FLAC__StreamDecoderWriteCallback ;
typedef int FLAC__StreamDecoderMetadataCallback ;
typedef int FLAC__StreamDecoderInitStatus ;
typedef int FLAC__StreamDecoderErrorCallback ;
typedef int FLAC__StreamDecoder ;


 int init_file_internal_ (int *,char const*,int ,int ,int ,void*,int) ;

FLAC__StreamDecoderInitStatus FLAC__stream_decoder_init_ogg_file(
 FLAC__StreamDecoder *decoder,
 const char *filename,
 FLAC__StreamDecoderWriteCallback write_callback,
 FLAC__StreamDecoderMetadataCallback metadata_callback,
 FLAC__StreamDecoderErrorCallback error_callback,
 void *client_data
)
{
 return init_file_internal_(decoder, filename, write_callback, metadata_callback, error_callback, client_data, 1);
}
