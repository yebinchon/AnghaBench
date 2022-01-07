
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* protected_; } ;
struct TYPE_4__ {size_t state; } ;
typedef TYPE_2__ FLAC__StreamDecoder ;


 char const** FLAC__StreamDecoderStateString ;

const char *FLAC__stream_decoder_get_resolved_state_string(const FLAC__StreamDecoder *decoder)
{
 return FLAC__StreamDecoderStateString[decoder->protected_->state];
}
