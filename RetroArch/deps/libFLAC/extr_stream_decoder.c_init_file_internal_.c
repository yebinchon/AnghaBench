
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* protected_; } ;
struct TYPE_5__ {scalar_t__ state; int initstate; } ;
typedef int FLAC__bool ;
typedef int FLAC__StreamDecoderWriteCallback ;
typedef int FLAC__StreamDecoderMetadataCallback ;
typedef int FLAC__StreamDecoderInitStatus ;
typedef int FLAC__StreamDecoderErrorCallback ;
typedef TYPE_2__ FLAC__StreamDecoder ;
typedef int FILE ;


 int FLAC__ASSERT (int) ;
 int FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED ;
 int FLAC__STREAM_DECODER_INIT_STATUS_ERROR_OPENING_FILE ;
 int FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int * flac_fopen (char const*,char*) ;
 int init_FILE_internal_ (TYPE_2__*,int *,int ,int ,int ,void*,int ) ;
 int * stdin ;

__attribute__((used)) static FLAC__StreamDecoderInitStatus init_file_internal_(
 FLAC__StreamDecoder *decoder,
 const char *filename,
 FLAC__StreamDecoderWriteCallback write_callback,
 FLAC__StreamDecoderMetadataCallback metadata_callback,
 FLAC__StreamDecoderErrorCallback error_callback,
 void *client_data,
 FLAC__bool is_ogg
)
{
 FILE *file;

 FLAC__ASSERT(0 != decoder);






 if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
  return decoder->protected_->initstate = FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED;

 if(0 == write_callback || 0 == error_callback)
  return decoder->protected_->initstate = FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS;

 file = filename? flac_fopen(filename, "rb") : stdin;

 if(0 == file)
  return FLAC__STREAM_DECODER_INIT_STATUS_ERROR_OPENING_FILE;

 return init_FILE_internal_(decoder, file, write_callback, metadata_callback, error_callback, client_data, is_ogg);
}
