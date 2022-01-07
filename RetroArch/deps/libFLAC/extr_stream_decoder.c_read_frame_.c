
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {scalar_t__ sample_number; } ;
struct TYPE_16__ {int blocksize; unsigned int channels; unsigned int bits_per_sample; int channel_assignment; scalar_t__ number_type; TYPE_1__ number; int sample_rate; } ;
struct TYPE_19__ {TYPE_3__ header; } ;
struct TYPE_18__ {TYPE_2__* protected_; TYPE_4__* private_; } ;
struct TYPE_17__ {int** output; TYPE_7__ frame; scalar_t__ samples_decoded; scalar_t__ next_fixed_block_size; scalar_t__ fixed_block_size; int input; int * header_warmup; } ;
struct TYPE_15__ {scalar_t__ state; unsigned int channels; int channel_assignment; unsigned int bits_per_sample; int blocksize; int sample_rate; } ;
typedef unsigned int FLAC__uint32 ;
typedef int FLAC__uint16 ;
typedef int FLAC__int32 ;
typedef int FLAC__bool ;
typedef TYPE_5__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;




 unsigned int FLAC__CRC16_UPDATE (int ,unsigned int) ;
 int FLAC__FRAME_FOOTER_CRC_LEN ;
 scalar_t__ FLAC__FRAME_NUMBER_TYPE_SAMPLE_NUMBER ;
 scalar_t__ FLAC__STREAM_DECODER_ABORTED ;
 int FLAC__STREAM_DECODER_ERROR_STATUS_FRAME_CRC_MISMATCH ;
 scalar_t__ FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC ;
 scalar_t__ FLAC__STREAM_DECODER_WRITE_STATUS_CONTINUE ;
 unsigned int FLAC__bitreader_get_read_crc16 (int ) ;
 int FLAC__bitreader_read_raw_uint32 (int ,unsigned int*,int ) ;
 int FLAC__bitreader_reset_read_crc16 (int ,int ) ;
 int allocate_output_ (TYPE_5__*,int,unsigned int) ;
 int memset (int*,int ,int) ;
 int read_frame_header_ (TYPE_5__*) ;
 int read_subframe_ (TYPE_5__*,unsigned int,unsigned int,int) ;
 int read_zero_padding_ (TYPE_5__*) ;
 int send_error_to_client_ (TYPE_5__*,int ) ;
 scalar_t__ write_audio_frame_to_client_ (TYPE_5__*,TYPE_7__*,int const* const*) ;

FLAC__bool read_frame_(FLAC__StreamDecoder *decoder, FLAC__bool *got_a_frame, FLAC__bool do_full_decode)
{
 unsigned channel;
 unsigned i;
 FLAC__int32 mid, side;
 unsigned frame_crc;
 FLAC__uint32 x;

 *got_a_frame = 0;


 frame_crc = 0;
 frame_crc = FLAC__CRC16_UPDATE(decoder->private_->header_warmup[0], frame_crc);
 frame_crc = FLAC__CRC16_UPDATE(decoder->private_->header_warmup[1], frame_crc);
 FLAC__bitreader_reset_read_crc16(decoder->private_->input, (FLAC__uint16)frame_crc);

 if(!read_frame_header_(decoder))
  return 0;
 if(decoder->protected_->state == FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC)
  return 1;
 if(!allocate_output_(decoder, decoder->private_->frame.header.blocksize, decoder->private_->frame.header.channels))
  return 0;
 for(channel = 0; channel < decoder->private_->frame.header.channels; channel++) {



  unsigned bps = decoder->private_->frame.header.bits_per_sample;
  switch(decoder->private_->frame.header.channel_assignment) {
   case 131:

    break;
   case 130:
    FLAC__ASSERT(decoder->private_->frame.header.channels == 2);
    if(channel == 1)
     bps++;
    break;
   case 128:
    FLAC__ASSERT(decoder->private_->frame.header.channels == 2);
    if(channel == 0)
     bps++;
    break;
   case 129:
    FLAC__ASSERT(decoder->private_->frame.header.channels == 2);
    if(channel == 1)
     bps++;
    break;
   default:
    FLAC__ASSERT(0);
  }



  if(!read_subframe_(decoder, channel, bps, do_full_decode))
   return 0;
  if(decoder->protected_->state == FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC)
   return 1;
 }
 if(!read_zero_padding_(decoder))
  return 0;
 if(decoder->protected_->state == FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC)
  return 1;




 frame_crc = FLAC__bitreader_get_read_crc16(decoder->private_->input);
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__FRAME_FOOTER_CRC_LEN))
  return 0;
 if(frame_crc == x) {
  if(do_full_decode) {

   switch(decoder->private_->frame.header.channel_assignment) {
    case 131:

     break;
    case 130:
     FLAC__ASSERT(decoder->private_->frame.header.channels == 2);
     for(i = 0; i < decoder->private_->frame.header.blocksize; i++)
      decoder->private_->output[1][i] = decoder->private_->output[0][i] - decoder->private_->output[1][i];
     break;
    case 128:
     FLAC__ASSERT(decoder->private_->frame.header.channels == 2);
     for(i = 0; i < decoder->private_->frame.header.blocksize; i++)
      decoder->private_->output[0][i] += decoder->private_->output[1][i];
     break;
    case 129:
     FLAC__ASSERT(decoder->private_->frame.header.channels == 2);
     for(i = 0; i < decoder->private_->frame.header.blocksize; i++) {

      mid = decoder->private_->output[0][i];
      side = decoder->private_->output[1][i];
      mid = ((uint32_t) mid) << 1;
      mid |= (side & 1);
      decoder->private_->output[0][i] = (mid + side) >> 1;
      decoder->private_->output[1][i] = (mid - side) >> 1;






     }
     break;
    default:
     FLAC__ASSERT(0);
     break;
   }
  }
 }
 else {

  send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_FRAME_CRC_MISMATCH);
  if(do_full_decode) {
   for(channel = 0; channel < decoder->private_->frame.header.channels; channel++) {
    memset(decoder->private_->output[channel], 0, sizeof(FLAC__int32) * decoder->private_->frame.header.blocksize);
   }
  }
 }

 *got_a_frame = 1;


 if(decoder->private_->next_fixed_block_size)
  decoder->private_->fixed_block_size = decoder->private_->next_fixed_block_size;


 decoder->protected_->channels = decoder->private_->frame.header.channels;
 decoder->protected_->channel_assignment = decoder->private_->frame.header.channel_assignment;
 decoder->protected_->bits_per_sample = decoder->private_->frame.header.bits_per_sample;
 decoder->protected_->sample_rate = decoder->private_->frame.header.sample_rate;
 decoder->protected_->blocksize = decoder->private_->frame.header.blocksize;

 FLAC__ASSERT(decoder->private_->frame.header.number_type == FLAC__FRAME_NUMBER_TYPE_SAMPLE_NUMBER);
 decoder->private_->samples_decoded = decoder->private_->frame.header.number.sample_number + decoder->private_->frame.header.blocksize;


 if(do_full_decode) {
  if(write_audio_frame_to_client_(decoder, &decoder->private_->frame, (const FLAC__int32 * const *)decoder->private_->output) != FLAC__STREAM_DECODER_WRITE_STATUS_CONTINUE) {
   decoder->protected_->state = FLAC__STREAM_DECODER_ABORTED;
   return 0;
  }
 }

 decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
 return 1;
}
