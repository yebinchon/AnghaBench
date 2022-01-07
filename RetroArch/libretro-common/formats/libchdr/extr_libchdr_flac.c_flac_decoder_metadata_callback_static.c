
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int channels; int bits_per_sample; int sample_rate; } ;
typedef TYPE_3__ flac_decoder ;
struct TYPE_7__ {int channels; int bits_per_sample; int sample_rate; } ;
struct TYPE_6__ {TYPE_2__ stream_info; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ data; } ;
typedef TYPE_4__ FLAC__StreamMetadata ;
typedef int FLAC__StreamDecoder ;


 scalar_t__ FLAC__METADATA_TYPE_STREAMINFO ;

void flac_decoder_metadata_callback_static(const FLAC__StreamDecoder *decoder, const FLAC__StreamMetadata *metadata, void *client_data)
{
   flac_decoder *fldecoder;

 if (metadata->type != FLAC__METADATA_TYPE_STREAMINFO)
  return;


 fldecoder = (flac_decoder *)(client_data);
 fldecoder->sample_rate = metadata->data.stream_info.sample_rate;
 fldecoder->bits_per_sample = metadata->data.stream_info.bits_per_sample;
 fldecoder->channels = metadata->data.stream_info.channels;
}
