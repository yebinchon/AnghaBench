
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_distance; int alphabet_size_max; int alphabet_size_limit; scalar_t__ num_direct_distance_codes; scalar_t__ distance_postfix_bits; } ;
struct TYPE_5__ {TYPE_1__ dist; int dictionary; void* disable_literal_context_modeling; scalar_t__ size_hint; scalar_t__ stream_offset; scalar_t__ lgblock; int lgwin; int quality; void* large_window; int mode; } ;
typedef TYPE_2__ BrotliEncoderParams ;


 int BROTLI_DEFAULT_MODE ;
 int BROTLI_DEFAULT_QUALITY ;
 int BROTLI_DEFAULT_WINDOW ;
 int BROTLI_DISTANCE_ALPHABET_SIZE (int ,int ,int ) ;
 void* BROTLI_FALSE ;
 int BROTLI_MAX_DISTANCE ;
 int BROTLI_MAX_DISTANCE_BITS ;
 int BrotliInitEncoderDictionary (int *) ;

__attribute__((used)) static void BrotliEncoderInitParams(BrotliEncoderParams* params) {
  params->mode = BROTLI_DEFAULT_MODE;
  params->large_window = BROTLI_FALSE;
  params->quality = BROTLI_DEFAULT_QUALITY;
  params->lgwin = BROTLI_DEFAULT_WINDOW;
  params->lgblock = 0;
  params->stream_offset = 0;
  params->size_hint = 0;
  params->disable_literal_context_modeling = BROTLI_FALSE;
  BrotliInitEncoderDictionary(&params->dictionary);
  params->dist.distance_postfix_bits = 0;
  params->dist.num_direct_distance_codes = 0;
  params->dist.alphabet_size_max =
      BROTLI_DISTANCE_ALPHABET_SIZE(0, 0, BROTLI_MAX_DISTANCE_BITS);
  params->dist.alphabet_size_limit = params->dist.alphabet_size_max;
  params->dist.max_distance = BROTLI_MAX_DISTANCE;
}
