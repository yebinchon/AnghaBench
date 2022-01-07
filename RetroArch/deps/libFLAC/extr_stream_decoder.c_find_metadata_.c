
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* protected_; TYPE_1__* private_; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_7__ {int cached; void** header_warmup; void* lookahead; int input; } ;
typedef int FLAC__uint32 ;
typedef void* FLAC__byte ;
typedef int FLAC__bool ;
typedef TYPE_3__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int ) ;
 int FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ;
 int FLAC__STREAM_DECODER_READ_FRAME ;
 int FLAC__STREAM_DECODER_READ_METADATA ;
 int* FLAC__STREAM_SYNC_STRING ;
 int FLAC__bitreader_is_consumed_byte_aligned (int ) ;
 int FLAC__bitreader_read_raw_uint32 (int ,int*,int) ;
 int* ID3V2_TAG_ ;
 int send_error_to_client_ (TYPE_3__*,int ) ;
 int skip_id3v2_tag_ (TYPE_3__*) ;

FLAC__bool find_metadata_(FLAC__StreamDecoder *decoder)
{
 FLAC__uint32 x;
 unsigned i, id;
 FLAC__bool first = 1;

 FLAC__ASSERT(FLAC__bitreader_is_consumed_byte_aligned(decoder->private_->input));

 for(i = id = 0; i < 4; ) {
  if(decoder->private_->cached) {
   x = (FLAC__uint32)decoder->private_->lookahead;
   decoder->private_->cached = 0;
  }
  else {
   if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, 8))
    return 0;
  }
  if(x == FLAC__STREAM_SYNC_STRING[i]) {
   first = 1;
   i++;
   id = 0;
   continue;
  }

  if(id >= 3)
   return 0;

  if(x == ID3V2_TAG_[id]) {
   id++;
   i = 0;
   if(id == 3) {
    if(!skip_id3v2_tag_(decoder))
     return 0;
   }
   continue;
  }
  id = 0;
  if(x == 0xff) {
   decoder->private_->header_warmup[0] = (FLAC__byte)x;
   if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &x, 8))
    return 0;



   if(x == 0xff) {
    decoder->private_->lookahead = (FLAC__byte)x;
    decoder->private_->cached = 1;
   }
   else if(x >> 1 == 0x7c) {
    decoder->private_->header_warmup[1] = (FLAC__byte)x;
    decoder->protected_->state = FLAC__STREAM_DECODER_READ_FRAME;
    return 1;
   }
  }
  i = 0;
  if(first) {
   send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
   first = 0;
  }
 }

 decoder->protected_->state = FLAC__STREAM_DECODER_READ_METADATA;
 return 1;
}
