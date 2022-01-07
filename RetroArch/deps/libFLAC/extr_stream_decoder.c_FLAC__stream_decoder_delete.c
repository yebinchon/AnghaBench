
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ input; scalar_t__ metadata_filter_ids; struct TYPE_5__* protected_; struct TYPE_5__* private_; int * partitioned_rice_contents; } ;
typedef TYPE_1__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 unsigned int FLAC__MAX_CHANNELS ;
 int FLAC__bitreader_delete (scalar_t__) ;
 int FLAC__format_entropy_coding_method_partitioned_rice_contents_clear (int *) ;
 int FLAC__stream_decoder_finish (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void FLAC__stream_decoder_delete(FLAC__StreamDecoder *decoder)
{
 unsigned i;

 if (decoder == ((void*)0))
  return ;

 FLAC__ASSERT(0 != decoder->protected_);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->private_->input);

 (void)FLAC__stream_decoder_finish(decoder);

 if(0 != decoder->private_->metadata_filter_ids)
  free(decoder->private_->metadata_filter_ids);

 FLAC__bitreader_delete(decoder->private_->input);

 for(i = 0; i < FLAC__MAX_CHANNELS; i++)
  FLAC__format_entropy_coding_method_partitioned_rice_contents_clear(&decoder->private_->partitioned_rice_contents[i]);

 free(decoder->private_);
 free(decoder->protected_);
 free(decoder);
}
