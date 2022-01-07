
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_9__ {void* state; } ;
struct TYPE_8__ {int unparseable_frame_count; scalar_t__ (* read_callback ) (TYPE_3__*,int *,size_t*,int ) ;int client_data; scalar_t__ (* eof_callback ) (TYPE_3__*,int ) ;scalar_t__ is_ogg; scalar_t__ is_seeking; } ;
typedef int FLAC__byte ;
typedef int FLAC__bool ;
typedef scalar_t__ FLAC__StreamDecoderReadStatus ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 void* FLAC__STREAM_DECODER_ABORTED ;
 void* FLAC__STREAM_DECODER_END_OF_STREAM ;
 scalar_t__ const FLAC__STREAM_DECODER_READ_STATUS_ABORT ;
 scalar_t__ const FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM ;
 scalar_t__ read_callback_ogg_aspect_ (TYPE_3__*,int *,size_t*) ;
 scalar_t__ stub1 (TYPE_3__*,int ) ;
 scalar_t__ stub2 (TYPE_3__*,int *,size_t*,int ) ;
 scalar_t__ stub3 (TYPE_3__*,int ) ;

FLAC__bool read_callback_(FLAC__byte buffer[], size_t *bytes, void *client_data)
{
 FLAC__StreamDecoder *decoder = (FLAC__StreamDecoder *)client_data;

 if(




  decoder->private_->eof_callback && decoder->private_->eof_callback(decoder, decoder->private_->client_data)
 ) {
  *bytes = 0;
  decoder->protected_->state = FLAC__STREAM_DECODER_END_OF_STREAM;
  return 0;
 }
 else if(*bytes > 0) {
  if(decoder->private_->is_seeking && decoder->private_->unparseable_frame_count > 20) {
   decoder->protected_->state = FLAC__STREAM_DECODER_ABORTED;
   return 0;
  }
  else {
   const FLAC__StreamDecoderReadStatus status =




    decoder->private_->read_callback(decoder, buffer, bytes, decoder->private_->client_data)
   ;
   if(status == FLAC__STREAM_DECODER_READ_STATUS_ABORT) {
    decoder->protected_->state = FLAC__STREAM_DECODER_ABORTED;
    return 0;
   }
   else if(*bytes == 0) {
    if(
     status == FLAC__STREAM_DECODER_READ_STATUS_END_OF_STREAM ||
     (




      decoder->private_->eof_callback && decoder->private_->eof_callback(decoder, decoder->private_->client_data)
     )
    ) {
     decoder->protected_->state = FLAC__STREAM_DECODER_END_OF_STREAM;
     return 0;
    }
    else
     return 1;
   }
   else
    return 1;
  }
 }
 else {

  decoder->protected_->state = FLAC__STREAM_DECODER_ABORTED;
  return 0;
 }
}
