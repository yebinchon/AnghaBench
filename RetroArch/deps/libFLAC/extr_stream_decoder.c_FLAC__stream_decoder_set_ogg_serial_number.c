
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ private_; TYPE_1__* protected_; } ;
struct TYPE_4__ {scalar_t__ state; int ogg_decoder_aspect; } ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;
 scalar_t__ FLAC__STREAM_DECODER_UNINITIALIZED ;
 int FLAC__ogg_decoder_aspect_set_serial_number (int *,long) ;

FLAC__bool FLAC__stream_decoder_set_ogg_serial_number(FLAC__StreamDecoder *decoder, long value)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->private_);
 FLAC__ASSERT(0 != decoder->protected_);
 if(decoder->protected_->state != FLAC__STREAM_DECODER_UNINITIALIZED)
  return 0;





 (void)value;
 return 0;

}
