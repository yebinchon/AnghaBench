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
struct TYPE_4__ {int /*<<< orphan*/  decoder_context_data; int /*<<< orphan*/  decoder_context; } ;
struct TYPE_3__ {int /*<<< orphan*/  plc_state; } ;
typedef  int /*<<< orphan*/  OI_UINT32 ;
typedef  int /*<<< orphan*/  OI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int HF_SBC_DEC_CONTEXT_DATA_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__ bta_ag_co_cb ; 
 TYPE_1__ bta_hf_ct_plc ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void) 
{
#if (PLC_INCLUDED == TRUE)
    FUNC3(&(bta_hf_ct_plc.plc_state));
#endif  ///(PLC_INCLUDED == TRUE)

    OI_STATUS status = FUNC1(&bta_ag_co_cb.decoder_context, bta_ag_co_cb.decoder_context_data,
                                       HF_SBC_DEC_CONTEXT_DATA_LEN * sizeof(OI_UINT32), 1, 1, FALSE, TRUE);
    if (!FUNC2(status)) {
        FUNC0("OI_CODEC_SBC_DecoderReset failed with error code %d\n", status);
    }
}