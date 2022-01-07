
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* protected_; } ;
struct TYPE_6__ {int state; } ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;






 int frame_sync_ (TYPE_2__*) ;
 int read_frame_ (TYPE_2__*,int*,int) ;

FLAC__bool FLAC__stream_decoder_skip_single_frame(FLAC__StreamDecoder *decoder)
{
 FLAC__bool got_a_frame;
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->protected_);

 while(1) {
  switch(decoder->protected_->state) {
   case 128:
   case 130:
    return 0;
   case 129:
    if(!frame_sync_(decoder))
     return 1;
    break;
   case 131:
    if(!read_frame_(decoder, &got_a_frame, 0))
     return 0;
    if(got_a_frame)
     return 1;
    break;
   case 132:
   case 133:
    return 1;
   default:
    FLAC__ASSERT(0);
    return 0;
  }
 }
}
