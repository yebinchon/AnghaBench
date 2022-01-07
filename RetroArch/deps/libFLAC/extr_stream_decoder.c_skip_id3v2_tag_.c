
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* private_; } ;
struct TYPE_4__ {int input; } ;
typedef int FLAC__uint32 ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__bitreader_read_raw_uint32 (int ,int*,int) ;
 int FLAC__bitreader_skip_byte_block_aligned_no_crc (int ,unsigned int) ;

FLAC__bool skip_id3v2_tag_(FLAC__StreamDecoder *decoder)
{
 FLAC__uint32 x;
 unsigned i, skip;


 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, 24))
  return 0;

 skip = 0;
 for(i = 0; i < 4; i++) {
  if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, 8))
   return 0;
  skip <<= 7;
  skip |= (x & 0x7f);
 }

 if(!FLAC__bitreader_skip_byte_block_aligned_no_crc(decoder->private_->input, skip))
  return 0;
 return 1;
}
