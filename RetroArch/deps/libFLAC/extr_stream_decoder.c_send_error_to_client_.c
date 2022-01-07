
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* private_; } ;
struct TYPE_5__ {int unparseable_frame_count; int client_data; int (* error_callback ) (TYPE_2__ const*,scalar_t__,int ) ;int is_seeking; } ;
typedef scalar_t__ FLAC__StreamDecoderErrorStatus ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 scalar_t__ FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM ;
 int stub1 (TYPE_2__ const*,scalar_t__,int ) ;

void send_error_to_client_(const FLAC__StreamDecoder *decoder, FLAC__StreamDecoderErrorStatus status)
{
 if(!decoder->private_->is_seeking)
  decoder->private_->error_callback(decoder, status, decoder->private_->client_data);
 else if(status == FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM)
  decoder->private_->unparseable_frame_count++;
}
