
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int decoder_context_data; int decoder_context; } ;
struct TYPE_3__ {int plc_state; } ;
typedef int OI_UINT32 ;
typedef int OI_STATUS ;


 int APPL_TRACE_ERROR (char*,int ) ;
 int FALSE ;
 int HF_SBC_DEC_CONTEXT_DATA_LEN ;
 int OI_CODEC_SBC_DecoderReset (int *,int ,int,int,int,int ,int ) ;
 int OI_SUCCESS (int ) ;
 int TRUE ;
 TYPE_2__ bta_ag_co_cb ;
 TYPE_1__ bta_hf_ct_plc ;
 int sbc_plc_init (int *) ;

__attribute__((used)) static void bta_hf_dec_init(void)
{

    sbc_plc_init(&(bta_hf_ct_plc.plc_state));


    OI_STATUS status = OI_CODEC_SBC_DecoderReset(&bta_ag_co_cb.decoder_context, bta_ag_co_cb.decoder_context_data,
                                       HF_SBC_DEC_CONTEXT_DATA_LEN * sizeof(OI_UINT32), 1, 1, FALSE, TRUE);
    if (!OI_SUCCESS(status)) {
        APPL_TRACE_ERROR("OI_CODEC_SBC_DecoderReset failed with error code %d\n", status);
    }
}
