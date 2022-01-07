
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






 int find_metadata_ (TYPE_2__*) ;
 int read_metadata_ (TYPE_2__*) ;

FLAC__bool FLAC__stream_decoder_process_until_end_of_metadata(FLAC__StreamDecoder *decoder)
{
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
   case 131:
   case 132:
   case 133:
    return 1;
   default:
    FLAC__ASSERT(0);
    return 0;
  }
 }
}
