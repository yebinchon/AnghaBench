
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {TYPE_5__* private_; TYPE_4__* protected_; } ;
struct TYPE_10__ {scalar_t__ points; } ;
struct TYPE_11__ {TYPE_1__ seek_table; } ;
struct TYPE_12__ {TYPE_2__ data; } ;
struct TYPE_14__ {int internal_reset_hack; scalar_t__ file; scalar_t__ (* seek_callback ) (TYPE_6__*,int ,int ) ;int has_stream_info; int has_seek_table; scalar_t__ unparseable_frame_count; scalar_t__ first_frame_offset; int md5context; scalar_t__ next_fixed_block_size; scalar_t__ fixed_block_size; int do_md5_checking; TYPE_3__ seek_table; int client_data; scalar_t__ is_ogg; } ;
struct TYPE_13__ {int md5_checking; int state; int ogg_decoder_aspect; } ;
typedef int FLAC__bool ;
typedef TYPE_6__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 int FLAC__MD5Init (int *) ;
 int FLAC__STREAM_DECODER_SEARCH_FOR_METADATA ;
 scalar_t__ FLAC__STREAM_DECODER_SEEK_STATUS_ERROR ;
 int FLAC__ogg_decoder_aspect_reset (int *) ;
 int FLAC__stream_decoder_flush (TYPE_6__*) ;
 int free (scalar_t__) ;
 scalar_t__ stdin ;
 scalar_t__ stub1 (TYPE_6__*,int ,int ) ;

FLAC__bool FLAC__stream_decoder_reset(FLAC__StreamDecoder *decoder)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);

 if(!FLAC__stream_decoder_flush(decoder)) {

  return 0;
 }
 if(!decoder->private_->internal_reset_hack) {
  if(decoder->private_->file == stdin)
   return 0;
  if(decoder->private_->seek_callback && decoder->private_->seek_callback(decoder, 0, decoder->private_->client_data) == FLAC__STREAM_DECODER_SEEK_STATUS_ERROR)
   return 0;
 }
 else
  decoder->private_->internal_reset_hack = 0;

 decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_METADATA;

 decoder->private_->has_stream_info = 0;

 free(decoder->private_->seek_table.data.seek_table.points);
 decoder->private_->seek_table.data.seek_table.points = 0;
 decoder->private_->has_seek_table = 0;

 decoder->private_->do_md5_checking = decoder->protected_->md5_checking;




 decoder->private_->fixed_block_size = decoder->private_->next_fixed_block_size = 0;







 FLAC__MD5Init(&decoder->private_->md5context);

 decoder->private_->first_frame_offset = 0;
 decoder->private_->unparseable_frame_count = 0;

 return 1;
}
