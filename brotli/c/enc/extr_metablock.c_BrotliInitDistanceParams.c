
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int max_alphabet_size; int max_distance; } ;
struct TYPE_7__ {int distance_postfix_bits; int num_direct_distance_codes; int alphabet_size_max; int alphabet_size_limit; int max_distance; } ;
struct TYPE_6__ {scalar_t__ large_window; TYPE_2__ dist; } ;
typedef TYPE_1__ BrotliEncoderParams ;
typedef TYPE_2__ BrotliDistanceParams ;
typedef TYPE_3__ BrotliDistanceCodeLimit ;


 int BROTLI_DISTANCE_ALPHABET_SIZE (int,int,int) ;
 int BROTLI_LARGE_MAX_DISTANCE_BITS ;
 int BROTLI_MAX_ALLOWED_DISTANCE ;
 int BROTLI_MAX_DISTANCE_BITS ;
 TYPE_3__ BrotliCalculateDistanceCodeLimit (int ,int,int) ;

void BrotliInitDistanceParams(BrotliEncoderParams* params,
    uint32_t npostfix, uint32_t ndirect) {
  BrotliDistanceParams* dist_params = &params->dist;
  uint32_t alphabet_size_max;
  uint32_t alphabet_size_limit;
  uint32_t max_distance;

  dist_params->distance_postfix_bits = npostfix;
  dist_params->num_direct_distance_codes = ndirect;

  alphabet_size_max = BROTLI_DISTANCE_ALPHABET_SIZE(
      npostfix, ndirect, BROTLI_MAX_DISTANCE_BITS);
  alphabet_size_limit = alphabet_size_max;
  max_distance = ndirect + (1U << (BROTLI_MAX_DISTANCE_BITS + npostfix + 2)) -
      (1U << (npostfix + 2));

  if (params->large_window) {
    BrotliDistanceCodeLimit limit = BrotliCalculateDistanceCodeLimit(
        BROTLI_MAX_ALLOWED_DISTANCE, npostfix, ndirect);
    alphabet_size_max = BROTLI_DISTANCE_ALPHABET_SIZE(
        npostfix, ndirect, BROTLI_LARGE_MAX_DISTANCE_BITS);
    alphabet_size_limit = limit.max_alphabet_size;
    max_distance = limit.max_distance;
  }

  dist_params->alphabet_size_max = alphabet_size_max;
  dist_params->alphabet_size_limit = alphabet_size_limit;
  dist_params->max_distance = max_distance;
}
