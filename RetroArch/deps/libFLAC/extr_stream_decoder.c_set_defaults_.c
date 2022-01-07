
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_6__ {int md5_checking; int ogg_decoder_aspect; } ;
struct TYPE_5__ {int is_ogg; int* metadata_filter; scalar_t__ metadata_filter_ids_count; scalar_t__ client_data; scalar_t__ error_callback; scalar_t__ metadata_callback; scalar_t__ write_callback; scalar_t__ eof_callback; scalar_t__ length_callback; scalar_t__ tell_callback; scalar_t__ seek_callback; scalar_t__ read_callback; } ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 size_t FLAC__METADATA_TYPE_STREAMINFO ;
 int FLAC__ogg_decoder_aspect_set_defaults (int *) ;
 int memset (int*,int ,int) ;

void set_defaults_(FLAC__StreamDecoder *decoder)
{
 decoder->private_->is_ogg = 0;
 decoder->private_->read_callback = 0;
 decoder->private_->seek_callback = 0;
 decoder->private_->tell_callback = 0;
 decoder->private_->length_callback = 0;
 decoder->private_->eof_callback = 0;
 decoder->private_->write_callback = 0;
 decoder->private_->metadata_callback = 0;
 decoder->private_->error_callback = 0;
 decoder->private_->client_data = 0;

 memset(decoder->private_->metadata_filter, 0, sizeof(decoder->private_->metadata_filter));
 decoder->private_->metadata_filter[FLAC__METADATA_TYPE_STREAMINFO] = 1;
 decoder->private_->metadata_filter_ids_count = 0;

 decoder->protected_->md5_checking = 0;




}
