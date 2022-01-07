
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* private_; } ;
struct TYPE_7__ {int md5sum; int total_samples; void* bits_per_sample; void* channels; void* sample_rate; void* max_framesize; void* min_framesize; void* max_blocksize; void* min_blocksize; } ;
struct TYPE_8__ {TYPE_1__ stream_info; } ;
struct TYPE_9__ {int is_last; unsigned int length; TYPE_2__ data; int type; } ;
struct TYPE_10__ {int input; TYPE_3__ stream_info; } ;
typedef void* FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_5__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 int FLAC__METADATA_TYPE_STREAMINFO ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_BITS_PER_SAMPLE_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_CHANNELS_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MAX_BLOCK_SIZE_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MAX_FRAME_SIZE_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MIN_BLOCK_SIZE_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_MIN_FRAME_SIZE_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_SAMPLE_RATE_LEN ;
 unsigned int FLAC__STREAM_METADATA_STREAMINFO_TOTAL_SAMPLES_LEN ;
 int FLAC__bitreader_is_consumed_byte_aligned (int ) ;
 int FLAC__bitreader_read_byte_block_aligned_no_crc (int ,int ,int) ;
 int FLAC__bitreader_read_raw_uint32 (int ,void**,unsigned int) ;
 int FLAC__bitreader_read_raw_uint64 (int ,int *,unsigned int) ;
 int FLAC__bitreader_skip_byte_block_aligned_no_crc (int ,unsigned int) ;

FLAC__bool read_metadata_streaminfo_(FLAC__StreamDecoder *decoder, FLAC__bool is_last, unsigned length)
{
 FLAC__uint32 x;
 unsigned bits, used_bits = 0;

 FLAC__ASSERT(FLAC__bitreader_is_consumed_byte_aligned(decoder->private_->input));

 decoder->private_->stream_info.type = FLAC__METADATA_TYPE_STREAMINFO;
 decoder->private_->stream_info.is_last = is_last;
 decoder->private_->stream_info.length = length;

 bits = FLAC__STREAM_METADATA_STREAMINFO_MIN_BLOCK_SIZE_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, bits))
  return 0;
 decoder->private_->stream_info.data.stream_info.min_blocksize = x;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_MAX_BLOCK_SIZE_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_MAX_BLOCK_SIZE_LEN))
  return 0;
 decoder->private_->stream_info.data.stream_info.max_blocksize = x;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_MIN_FRAME_SIZE_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_MIN_FRAME_SIZE_LEN))
  return 0;
 decoder->private_->stream_info.data.stream_info.min_framesize = x;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_MAX_FRAME_SIZE_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_MAX_FRAME_SIZE_LEN))
  return 0;
 decoder->private_->stream_info.data.stream_info.max_framesize = x;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_SAMPLE_RATE_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_SAMPLE_RATE_LEN))
  return 0;
 decoder->private_->stream_info.data.stream_info.sample_rate = x;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_CHANNELS_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_CHANNELS_LEN))
  return 0;
 decoder->private_->stream_info.data.stream_info.channels = x+1;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_BITS_PER_SAMPLE_LEN;
 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, FLAC__STREAM_METADATA_STREAMINFO_BITS_PER_SAMPLE_LEN))
  return 0;
 decoder->private_->stream_info.data.stream_info.bits_per_sample = x+1;
 used_bits += bits;

 bits = FLAC__STREAM_METADATA_STREAMINFO_TOTAL_SAMPLES_LEN;
 if(!FLAC__bitreader_read_raw_uint64(decoder->private_->input, &decoder->private_->stream_info.data.stream_info.total_samples, FLAC__STREAM_METADATA_STREAMINFO_TOTAL_SAMPLES_LEN))
  return 0;
 used_bits += bits;

 if(!FLAC__bitreader_read_byte_block_aligned_no_crc(decoder->private_->input, decoder->private_->stream_info.data.stream_info.md5sum, 16))
  return 0;
 used_bits += 16*8;


 FLAC__ASSERT(used_bits % 8 == 0);
 length -= (used_bits / 8);
 if(!FLAC__bitreader_skip_byte_block_aligned_no_crc(decoder->private_->input, length))
  return 0;

 return 1;
}
