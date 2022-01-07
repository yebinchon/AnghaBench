
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* protected_; } ;
struct TYPE_4__ {int channel_assignment; } ;
typedef TYPE_2__ FLAC__StreamDecoder ;
typedef int FLAC__ChannelAssignment ;


 int FLAC__ASSERT (int) ;

FLAC__ChannelAssignment FLAC__stream_decoder_get_channel_assignment(const FLAC__StreamDecoder *decoder)
{
 FLAC__ASSERT(0 != decoder);
 FLAC__ASSERT(0 != decoder->protected_);
 return decoder->protected_->channel_assignment;
}
