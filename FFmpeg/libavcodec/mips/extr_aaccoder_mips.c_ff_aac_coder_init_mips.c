
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int search_for_ms; int search_for_quantizers; int encode_window_bands_info; int quantize_and_encode_band; } ;
struct TYPE_5__ {int coder; } ;
struct TYPE_6__ {TYPE_1__ options; TYPE_3__* coder; } ;
typedef TYPE_2__ AACEncContext ;
typedef TYPE_3__ AACCoefficientsEncoder ;


 int codebook_trellis_rate ;
 int quantize_and_encode_band_mips ;
 int search_for_ms_mips ;
 int search_for_quantizers_twoloop ;

void ff_aac_coder_init_mips(AACEncContext *c) {
}
