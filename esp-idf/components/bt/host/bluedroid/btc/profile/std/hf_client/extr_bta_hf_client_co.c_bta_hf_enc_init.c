
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int s16NumOfBlocks; int s16NumOfSubBands; int s16BitPool; int s16NumOfChannels; int s16SamplingFreq; int s16ChannelMode; int s16AllocationMethod; int sbc_mode; } ;
struct TYPE_3__ {int decode_first_pkt; int encode_first_pkt; int is_bad_frame; TYPE_2__ encoder; scalar_t__ sequence_number; } ;


 int SBC_Encoder_Init (TYPE_2__*) ;
 int SBC_LOUDNESS ;
 int SBC_MODE_MSBC ;
 int SBC_MONO ;
 int SBC_sf16000 ;
 TYPE_1__ bta_hf_client_co_cb ;

__attribute__((used)) static void bta_hf_enc_init(void) {
    bta_hf_client_co_cb.sequence_number = 0;
    bta_hf_client_co_cb.decode_first_pkt = 1;
    bta_hf_client_co_cb.encode_first_pkt = 1;
    bta_hf_client_co_cb.is_bad_frame = 0;

    bta_hf_client_co_cb.encoder.sbc_mode = SBC_MODE_MSBC;
    bta_hf_client_co_cb.encoder.s16NumOfBlocks = 15;
    bta_hf_client_co_cb.encoder.s16NumOfSubBands = 8;
    bta_hf_client_co_cb.encoder.s16AllocationMethod = SBC_LOUDNESS;
    bta_hf_client_co_cb.encoder.s16BitPool = 26;
    bta_hf_client_co_cb.encoder.s16ChannelMode = SBC_MONO;
    bta_hf_client_co_cb.encoder.s16NumOfChannels = 1;
    bta_hf_client_co_cb.encoder.s16SamplingFreq = SBC_sf16000;

    SBC_Encoder_Init(&(bta_hf_client_co_cb.encoder));
}
