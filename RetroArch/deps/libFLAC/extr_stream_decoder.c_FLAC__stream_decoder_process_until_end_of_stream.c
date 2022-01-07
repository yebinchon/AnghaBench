
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* protected_; } ;
struct TYPE_8__ {int state; } ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 int FLAC__ASSERT (int) ;






 int find_metadata_ (TYPE_2__*) ;
 int frame_sync_ (TYPE_2__*) ;
 int read_frame_ (TYPE_2__*,int*,int) ;
 int read_metadata_ (TYPE_2__*) ;

FLAC__bool FLAC__stream_decoder_process_until_end_of_stream(FLAC__StreamDecoder *decoder)
{
 FLAC__bool dummy;
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->protected_);

 while(1) {
  switch(decoder->protected_->state) {
   case 128:
    if(!find_metadata_(decoder))
     return 0;
    break;
   case 130:
    if(!read_metadata_(decoder))
     return 0;
    break;
   case 129:
    if(!frame_sync_(decoder))
     return 1;
    break;
   case 131:
    if(!read_frame_(decoder, &dummy, 1))
     return 0;
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
