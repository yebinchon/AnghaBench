
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_20__ {TYPE_8__* protected_; TYPE_7__* private_; } ;
struct TYPE_19__ {scalar_t__ state; int ogg_decoder_aspect; } ;
struct TYPE_15__ {int md5sum; } ;
struct TYPE_16__ {TYPE_4__ stream_info; } ;
struct TYPE_17__ {TYPE_5__ data; } ;
struct TYPE_12__ {scalar_t__ points; } ;
struct TYPE_13__ {TYPE_1__ seek_table; } ;
struct TYPE_14__ {TYPE_2__ data; } ;
struct TYPE_18__ {int has_seek_table; scalar_t__* output; scalar_t__* residual_unaligned; scalar_t__* residual; scalar_t__ file; int is_seeking; int computed_md5sum; TYPE_6__ stream_info; scalar_t__ do_md5_checking; scalar_t__ is_ogg; scalar_t__ output_channels; scalar_t__ output_capacity; int input; TYPE_3__ seek_table; int md5context; } ;
typedef int FLAC__bool ;
typedef TYPE_9__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 unsigned int FLAC__MAX_CHANNELS ;
 int FLAC__MD5Final (int ,int *) ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int FLAC__bitreader_free (int ) ;
 int FLAC__ogg_decoder_aspect_finish (int *) ;
 int fclose (scalar_t__) ;
 int free (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int set_defaults_ (TYPE_9__*) ;
 scalar_t__ stdin ;

FLAC__bool FLAC__stream_decoder_finish(FLAC__StreamDecoder *decoder)
{
 FLAC__bool md5_failed = 0;
 unsigned i;

 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);

 if(decoder->protected_->state == FLAC__STREAM_DECODER_UNINITIALIZED)
  return 1;




 FLAC__MD5Final(decoder->private_->computed_md5sum, &decoder->private_->md5context);

 free(decoder->private_->seek_table.data.seek_table.points);
 decoder->private_->seek_table.data.seek_table.points = 0;
 decoder->private_->has_seek_table = 0;

 FLAC__bitreader_free(decoder->private_->input);
 for(i = 0; i < FLAC__MAX_CHANNELS; i++) {






  if(0 != decoder->private_->output[i]) {
   free(decoder->private_->output[i]-4);
   decoder->private_->output[i] = 0;
  }
  if(0 != decoder->private_->residual_unaligned[i]) {
   free(decoder->private_->residual_unaligned[i]);
   decoder->private_->residual_unaligned[i] = decoder->private_->residual[i] = 0;
  }
 }
 decoder->private_->output_capacity = 0;
 decoder->private_->output_channels = 0;






 if(0 != decoder->private_->file) {
  if(decoder->private_->file != stdin)
   fclose(decoder->private_->file);
  decoder->private_->file = 0;
 }

 if(decoder->private_->do_md5_checking) {
  if(memcmp(decoder->private_->stream_info.data.stream_info.md5sum, decoder->private_->computed_md5sum, 16))
   md5_failed = 1;
 }
 decoder->private_->is_seeking = 0;

 set_defaults_(decoder);

 decoder->protected_->state = FLAC__STREAM_DECODER_UNINITIALIZED;

 return !md5_failed;
}
