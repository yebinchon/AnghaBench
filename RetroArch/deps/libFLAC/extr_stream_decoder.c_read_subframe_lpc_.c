
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_23__ {int blocksize; } ;
struct TYPE_24__ {TYPE_7__ header; TYPE_2__* subframes; } ;
struct TYPE_25__ {scalar_t__* output; TYPE_8__ frame; int * residual; int (* local_lpc_restore_signal_64bit ) (int ,int,scalar_t__*,unsigned int const,scalar_t__,scalar_t__) ;int (* local_lpc_restore_signal ) (int ,int,scalar_t__*,unsigned int const,scalar_t__,scalar_t__) ;int (* local_lpc_restore_signal_16bit ) (int ,int,scalar_t__*,unsigned int const,scalar_t__,scalar_t__) ;int * partitioned_rice_contents; int input; } ;
struct TYPE_20__ {unsigned int order; int * contents; } ;
struct TYPE_21__ {TYPE_4__ partitioned_rice; } ;
struct TYPE_22__ {int type; TYPE_5__ data; } ;
struct TYPE_19__ {void* state; } ;
struct TYPE_15__ {unsigned int order; unsigned int qlp_coeff_precision; scalar_t__ quantization_level; scalar_t__* qlp_coeff; scalar_t__* warmup; TYPE_6__ entropy_coding_method; int residual; } ;
struct TYPE_17__ {TYPE_10__ lpc; } ;
struct TYPE_18__ {int type; TYPE_1__ data; } ;
struct TYPE_16__ {TYPE_9__* private_; TYPE_3__* protected_; } ;
typedef unsigned int FLAC__uint32 ;
typedef scalar_t__ FLAC__int32 ;
typedef int FLAC__bool ;
typedef TYPE_10__ FLAC__Subframe_LPC ;
typedef TYPE_11__ FLAC__StreamDecoder ;
typedef int FLAC__EntropyCodingMethodType ;


 int FLAC__ASSERT (int ) ;


 unsigned int FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN ;
 unsigned int FLAC__ENTROPY_CODING_METHOD_TYPE_LEN ;
 int FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC ;
 int FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM ;
 void* FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC ;
 unsigned int FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN ;
 unsigned int FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN ;
 int FLAC__SUBFRAME_TYPE_LPC ;
 int FLAC__bitmath_ilog2 (unsigned int const) ;
 int FLAC__bitreader_read_raw_int32 (int ,scalar_t__*,unsigned int) ;
 int FLAC__bitreader_read_raw_uint32 (int ,unsigned int*,unsigned int) ;
 int memcpy (scalar_t__,scalar_t__*,int) ;
 int read_residual_partitioned_rice_ (TYPE_11__*,unsigned int const,unsigned int,int *,int ,int) ;
 int send_error_to_client_ (TYPE_11__*,int ) ;
 int stub1 (int ,int,scalar_t__*,unsigned int const,scalar_t__,scalar_t__) ;
 int stub2 (int ,int,scalar_t__*,unsigned int const,scalar_t__,scalar_t__) ;
 int stub3 (int ,int,scalar_t__*,unsigned int const,scalar_t__,scalar_t__) ;

FLAC__bool read_subframe_lpc_(FLAC__StreamDecoder *decoder, unsigned channel, unsigned bps, const unsigned order, FLAC__bool do_full_decode)
{
 FLAC__Subframe_LPC *subframe = &decoder->private_->frame.subframes[channel].data.lpc;
 FLAC__int32 i32;
 FLAC__uint32 u32;
 unsigned u;

 decoder->private_->frame.subframes[channel].type = FLAC__SUBFRAME_TYPE_LPC;

 subframe->residual = decoder->private_->residual[channel];
 subframe->order = order;


 for(u = 0; u < order; u++) {
  if(!FLAC__bitreader_read_raw_int32(decoder->private_->input, &i32, bps))
   return 0;
  subframe->warmup[u] = i32;
 }


 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &u32, FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN))
  return 0;
 if(u32 == (1u << FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN) - 1) {
  send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
  decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
  return 1;
 }
 subframe->qlp_coeff_precision = u32+1;


 if(!FLAC__bitreader_read_raw_int32(decoder->private_->input, &i32, FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN))
  return 0;
 if(i32 < 0) {
  send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
  decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
  return 1;
 }
 subframe->quantization_level = i32;


 for(u = 0; u < order; u++) {
  if(!FLAC__bitreader_read_raw_int32(decoder->private_->input, &i32, subframe->qlp_coeff_precision))
   return 0;
  subframe->qlp_coeff[u] = i32;
 }


 if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &u32, FLAC__ENTROPY_CODING_METHOD_TYPE_LEN))
  return 0;
 subframe->entropy_coding_method.type = (FLAC__EntropyCodingMethodType)u32;
 switch(subframe->entropy_coding_method.type) {
  case 129:
  case 128:
   if(!FLAC__bitreader_read_raw_uint32(decoder->private_->input, &u32, FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN))
    return 0;
   if(decoder->private_->frame.header.blocksize >> u32 < order) {
    send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_LOST_SYNC);
    decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
    return 1;
   }
   subframe->entropy_coding_method.data.partitioned_rice.order = u32;
   subframe->entropy_coding_method.data.partitioned_rice.contents = &decoder->private_->partitioned_rice_contents[channel];
   break;
  default:
   send_error_to_client_(decoder, FLAC__STREAM_DECODER_ERROR_STATUS_UNPARSEABLE_STREAM);
   decoder->protected_->state = FLAC__STREAM_DECODER_SEARCH_FOR_FRAME_SYNC;
   return 1;
 }


 switch(subframe->entropy_coding_method.type) {
  case 129:
  case 128:
   if(!read_residual_partitioned_rice_(decoder, order, subframe->entropy_coding_method.data.partitioned_rice.order, &decoder->private_->partitioned_rice_contents[channel], decoder->private_->residual[channel], subframe->entropy_coding_method.type == 128))
    return 0;
   break;
  default:
   FLAC__ASSERT(0);
 }


 if(do_full_decode) {
  memcpy(decoder->private_->output[channel], subframe->warmup, sizeof(FLAC__int32) * order);
  if(bps + subframe->qlp_coeff_precision + FLAC__bitmath_ilog2(order) <= 32)
   if(bps <= 16 && subframe->qlp_coeff_precision <= 16)
    decoder->private_->local_lpc_restore_signal_16bit(decoder->private_->residual[channel], decoder->private_->frame.header.blocksize-order, subframe->qlp_coeff, order, subframe->quantization_level, decoder->private_->output[channel]+order);
   else
    decoder->private_->local_lpc_restore_signal(decoder->private_->residual[channel], decoder->private_->frame.header.blocksize-order, subframe->qlp_coeff, order, subframe->quantization_level, decoder->private_->output[channel]+order);
  else
   decoder->private_->local_lpc_restore_signal_64bit(decoder->private_->residual[channel], decoder->private_->frame.header.blocksize-order, subframe->qlp_coeff, order, subframe->quantization_level, decoder->private_->output[channel]+order);
 }

 return 1;
}
