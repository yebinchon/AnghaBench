#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int /*<<< orphan*/  decoder_context_data; int /*<<< orphan*/  decoder_context; scalar_t__ decode_raw_data; } ;
struct TYPE_3__ {scalar_t__ sbc_plc_out; int /*<<< orphan*/  plc_state; int /*<<< orphan*/  first_good_frame_found; } ;
typedef  int /*<<< orphan*/  OI_UINT32 ;
typedef  int OI_STATUS ;
typedef  int /*<<< orphan*/  OI_INT16 ;
typedef  int /*<<< orphan*/  OI_BYTE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  BTM_MSBC_FRAME_DATA_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int HF_SBC_DEC_CONTEXT_DATA_LEN ; 
 int /*<<< orphan*/  HF_SBC_DEC_RAW_DATA_SIZE ; 
#define  OI_CODEC_SBC_CHECKSUM_MISMATCH 134 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  OI_CODEC_SBC_NOT_ENOUGH_AUDIO_DATA 133 
#define  OI_CODEC_SBC_NOT_ENOUGH_BODY_DATA 132 
#define  OI_CODEC_SBC_NOT_ENOUGH_HEADER_DATA 131 
#define  OI_CODEC_SBC_NO_SYNCWORD 130 
#define  OI_OK 129 
#define  OI_STATUS_INVALID_PARAMETERS 128 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ bta_hf_client_co_cb ; 
 TYPE_1__ bta_hf_ct_plc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 () ; 

__attribute__((used)) static void FUNC9(UINT8 **data, UINT8 *length, BOOLEAN is_bad_frame){
    OI_STATUS status;
    const OI_BYTE *zero_signal_frame_data;
    UINT8 zero_signal_frame_len = BTM_MSBC_FRAME_DATA_SIZE;
    UINT32 sbc_raw_data_size = HF_SBC_DEC_RAW_DATA_SIZE;

    if (is_bad_frame){
        status = OI_CODEC_SBC_CHECKSUM_MISMATCH;
    } else {
        status = FUNC2(&bta_hf_client_co_cb.decoder_context, (const OI_BYTE **)data,
                                          (OI_UINT32 *)length,
                                          (OI_INT16 *)bta_hf_client_co_cb.decode_raw_data,
                                          (OI_UINT32 *)&sbc_raw_data_size);
    }

// PLC_INCLUDED will be set to TRUE when enabling Wide Band Speech
#if (PLC_INCLUDED == TRUE)
    switch(status){
        case OI_OK:
            bta_hf_ct_plc.first_good_frame_found = TRUE;
            FUNC7(&(bta_hf_ct_plc.plc_state), (int16_t *)bta_hf_client_co_cb.decode_raw_data, bta_hf_ct_plc.sbc_plc_out);
        case OI_CODEC_SBC_NOT_ENOUGH_HEADER_DATA:
        case OI_CODEC_SBC_NOT_ENOUGH_BODY_DATA:
        case OI_CODEC_SBC_NOT_ENOUGH_AUDIO_DATA:
            break;
        case OI_CODEC_SBC_NO_SYNCWORD:
        case OI_CODEC_SBC_CHECKSUM_MISMATCH:
            if (!bta_hf_ct_plc.first_good_frame_found) {
                break;
            }
            zero_signal_frame_data = FUNC8();
            sbc_raw_data_size = HF_SBC_DEC_RAW_DATA_SIZE;
            status = FUNC2(&bta_hf_client_co_cb.decoder_context, &zero_signal_frame_data,
                                                (OI_UINT32 *)&zero_signal_frame_len,
                                                (OI_INT16 *)bta_hf_client_co_cb.decode_raw_data,
                                                (OI_UINT32 *)&sbc_raw_data_size);
            FUNC6(&(bta_hf_ct_plc.plc_state), bta_hf_client_co_cb.decode_raw_data, bta_hf_ct_plc.sbc_plc_out);
            FUNC0("bad frame, using PLC to fix it.");
            break;
        case OI_STATUS_INVALID_PARAMETERS:
            // This caused by corrupt frames.
            // The codec apparently does not recover from this.
            // Re-initialize the codec.
            FUNC1("Frame decode error: OI_STATUS_INVALID_PARAMETERS");

            if (!FUNC4(FUNC3(&bta_hf_client_co_cb.decoder_context, bta_hf_client_co_cb.decoder_context_data,
                                       HF_SBC_DEC_CONTEXT_DATA_LEN * sizeof(OI_UINT32), 1, 1, FALSE, TRUE))) {
                FUNC1("OI_CODEC_SBC_DecoderReset failed with error code %d\n", status);
            }
            break;
        default:
            FUNC1("Frame decode error: %d", status);
            break;
    }
#endif  ///(PLC_INCLUDED == TRUE)

    if (FUNC4(status)){
        FUNC5((const uint8_t *)(bta_hf_ct_plc.sbc_plc_out), sbc_raw_data_size);
    }
}