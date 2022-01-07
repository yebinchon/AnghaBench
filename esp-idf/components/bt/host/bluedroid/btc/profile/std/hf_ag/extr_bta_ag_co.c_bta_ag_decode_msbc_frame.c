
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {int decoder_context_data; int decoder_context; scalar_t__ decode_raw_data; } ;
struct TYPE_3__ {scalar_t__ sbc_plc_out; int plc_state; int first_good_frame_found; } ;
typedef int OI_UINT32 ;
typedef int OI_STATUS ;
typedef int OI_INT16 ;
typedef int OI_BYTE ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_DEBUG (char*) ;
 int APPL_TRACE_ERROR (char*,...) ;
 int BTM_MSBC_FRAME_DATA_SIZE ;
 int FALSE ;
 int HF_SBC_DEC_CONTEXT_DATA_LEN ;
 int HF_SBC_DEC_RAW_DATA_SIZE ;

 int OI_CODEC_SBC_DecodeFrame (int *,int const**,int *,int *,int *) ;
 int OI_CODEC_SBC_DecoderReset (int *,int ,int,int,int,int ,int ) ;






 scalar_t__ OI_SUCCESS (int) ;
 int TRUE ;
 TYPE_2__ bta_ag_co_cb ;
 TYPE_1__ bta_hf_ct_plc ;
 int btc_hf_incoming_data_cb_to_app (int const*,int ) ;
 int sbc_plc_bad_frame (int *,scalar_t__,scalar_t__) ;
 int sbc_plc_good_frame (int *,int *,scalar_t__) ;
 int * sbc_plc_zero_signal_frame () ;

__attribute__((used)) static void bta_ag_decode_msbc_frame(UINT8 **data, UINT8 *length, BOOLEAN is_bad_frame)
{
    OI_STATUS status;
    const OI_BYTE *zero_signal_frame_data;
    UINT8 zero_signal_frame_len = BTM_MSBC_FRAME_DATA_SIZE;
    UINT32 sbc_raw_data_size = HF_SBC_DEC_RAW_DATA_SIZE;

    if (is_bad_frame) {
        status = 134;
    } else {
        status = OI_CODEC_SBC_DecodeFrame(&bta_ag_co_cb.decoder_context, (const OI_BYTE **)data,
                                          (OI_UINT32 *)length,
                                          (OI_INT16 *)bta_ag_co_cb.decode_raw_data,
                                          (OI_UINT32 *)&sbc_raw_data_size);
    }



    switch(status) {
        case 129:
        {
            bta_hf_ct_plc.first_good_frame_found = TRUE;
            sbc_plc_good_frame(&(bta_hf_ct_plc.plc_state), (int16_t *)bta_ag_co_cb.decode_raw_data, bta_hf_ct_plc.sbc_plc_out);
        }

        case 131:
        case 132:
        case 133:
            break;

        case 130:
        case 134:
        {
            if (!bta_hf_ct_plc.first_good_frame_found) {
                break;
            }
            zero_signal_frame_data = sbc_plc_zero_signal_frame();
            sbc_raw_data_size = HF_SBC_DEC_RAW_DATA_SIZE;
            status = OI_CODEC_SBC_DecodeFrame(&bta_ag_co_cb.decoder_context, &zero_signal_frame_data,
                                                (OI_UINT32 *)&zero_signal_frame_len,
                                                (OI_INT16 *)bta_ag_co_cb.decode_raw_data,
                                                (OI_UINT32 *)&sbc_raw_data_size);
            sbc_plc_bad_frame(&(bta_hf_ct_plc.plc_state), bta_ag_co_cb.decode_raw_data, bta_hf_ct_plc.sbc_plc_out);
            APPL_TRACE_DEBUG("bad frame, using PLC to fix it.");
            break;
        }

        case 128:
        {



            APPL_TRACE_ERROR("Frame decode error: OI_STATUS_INVALID_PARAMETERS");

            if (!OI_SUCCESS(OI_CODEC_SBC_DecoderReset(&bta_ag_co_cb.decoder_context, bta_ag_co_cb.decoder_context_data,
                                       HF_SBC_DEC_CONTEXT_DATA_LEN * sizeof(OI_UINT32), 1, 1, FALSE, TRUE))) {
                APPL_TRACE_ERROR("OI_CODEC_SBC_DecoderReset failed with error code %d\n", status);
            }
            break;
        }

        default:
            APPL_TRACE_ERROR("Frame decode error: %d", status);
            break;
    }


    if (OI_SUCCESS(status)) {
        btc_hf_incoming_data_cb_to_app((const uint8_t *)(bta_hf_ct_plc.sbc_plc_out), sbc_raw_data_size);
    }
}
