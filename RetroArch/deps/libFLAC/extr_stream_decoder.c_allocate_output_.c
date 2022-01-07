
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* private_; TYPE_1__* protected_; } ;
struct TYPE_6__ {unsigned int output_capacity; unsigned int output_channels; scalar_t__* residual_unaligned; int ** residual; int ** output; } ;
struct TYPE_5__ {void* state; } ;
typedef int FLAC__int32 ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 unsigned int FLAC__MAX_CHANNELS ;
 void* FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR ;
 int FLAC__memory_alloc_aligned_int32_array (unsigned int,int **,int **) ;
 int free (int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ safe_malloc_muladd2_ (int,unsigned int,int) ;

FLAC__bool allocate_output_(FLAC__StreamDecoder *decoder, unsigned size, unsigned channels)
{
 unsigned i;
 FLAC__int32 *tmp;

 if(size <= decoder->private_->output_capacity && channels <= decoder->private_->output_channels)
  return 1;



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

 for(i = 0; i < channels; i++) {






  tmp = (FLAC__int32*)safe_malloc_muladd2_(sizeof(FLAC__int32), size, 4 );
  if(tmp == 0) {
   decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
   return 0;
  }
  memset(tmp, 0, sizeof(FLAC__int32)*4);
  decoder->private_->output[i] = tmp + 4;

  if(!FLAC__memory_alloc_aligned_int32_array(size, &decoder->private_->residual_unaligned[i], &decoder->private_->residual[i])) {
   decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
   return 0;
  }
 }

 decoder->private_->output_capacity = size;
 decoder->private_->output_channels = channels;

 return 1;
}
