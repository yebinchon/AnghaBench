
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ quality; } ;
typedef int ContextType ;
typedef TYPE_1__ BrotliEncoderParams ;


 int BrotliIsMostlyUTF8 (int const*,size_t const,size_t const,size_t const,int ) ;
 int CONTEXT_SIGNED ;
 int CONTEXT_UTF8 ;
 scalar_t__ MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING ;
 int kMinUTF8Ratio ;

__attribute__((used)) static ContextType ChooseContextMode(const BrotliEncoderParams* params,
    const uint8_t* data, const size_t pos, const size_t mask,
    const size_t length) {


  if (params->quality >= MIN_QUALITY_FOR_HQ_BLOCK_SPLITTING &&
      !BrotliIsMostlyUTF8(data, pos, mask, length, kMinUTF8Ratio)) {
    return CONTEXT_SIGNED;
  }
  return CONTEXT_UTF8;
}
