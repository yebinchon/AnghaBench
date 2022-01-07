
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* private_; TYPE_1__* protected_; } ;
struct TYPE_7__ {int * file; } ;
struct TYPE_6__ {scalar_t__ state; int initstate; } ;
typedef int FLAC__bool ;
typedef scalar_t__ FLAC__StreamDecoderWriteCallback ;
typedef int FLAC__StreamDecoderMetadataCallback ;
typedef int FLAC__StreamDecoderInitStatus ;
typedef scalar_t__ FLAC__StreamDecoderErrorCallback ;
typedef TYPE_3__ FLAC__StreamDecoder ;
typedef int FILE ;


 int FLAC__ASSERT (int) ;
 int FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED ;
 int FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int file_eof_callback_ ;
 int file_length_callback_ ;
 int file_read_callback_ ;
 int file_seek_callback_ ;
 int file_tell_callback_ ;
 int * get_binary_stdin_ () ;
 int init_stream_internal_ (TYPE_3__*,int ,int ,int ,int ,int ,scalar_t__,int ,scalar_t__,void*,int ) ;
 int * stdin ;

__attribute__((used)) static FLAC__StreamDecoderInitStatus init_FILE_internal_(
 FLAC__StreamDecoder *decoder,
 FILE *file,
 FLAC__StreamDecoderWriteCallback write_callback,
 FLAC__StreamDecoderMetadataCallback metadata_callback,
 FLAC__StreamDecoderErrorCallback error_callback,
 void *client_data,
 FLAC__bool is_ogg
)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != file);

 if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
  return decoder->protected_->initstate = FLAC__STREAM_DECODER_INIT_STATUS_ALREADY_INITIALIZED;

 if(0 == write_callback || 0 == error_callback)
  return decoder->protected_->initstate = FLAC__STREAM_DECODER_INIT_STATUS_INVALID_CALLBACKS;






 if(file == stdin)
  file = get_binary_stdin_();

 decoder->private_->file = file;

 return init_stream_internal_(
  decoder,
  file_read_callback_,
  decoder->private_->file == stdin? 0: file_seek_callback_,
  decoder->private_->file == stdin? 0: file_tell_callback_,
  decoder->private_->file == stdin? 0: file_length_callback_,
  file_eof_callback_,
  write_callback,
  metadata_callback,
  error_callback,
  client_data,
  is_ogg
 );
}
