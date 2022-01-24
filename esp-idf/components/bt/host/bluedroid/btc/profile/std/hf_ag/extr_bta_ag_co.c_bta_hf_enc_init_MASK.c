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
struct TYPE_4__ {int s16NumOfBlocks; int s16NumOfSubBands; int s16BitPool; int s16NumOfChannels; int /*<<< orphan*/  s16SamplingFreq; int /*<<< orphan*/  s16ChannelMode; int /*<<< orphan*/  s16AllocationMethod; int /*<<< orphan*/  sbc_mode; } ;
struct TYPE_3__ {int decode_first_pkt; int encode_first_pkt; int is_bad_frame; TYPE_2__ encoder; scalar_t__ sequence_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  SBC_LOUDNESS ; 
 int /*<<< orphan*/  SBC_MODE_MSBC ; 
 int /*<<< orphan*/  SBC_MONO ; 
 int /*<<< orphan*/  SBC_sf16000 ; 
 TYPE_1__ bta_ag_co_cb ; 

__attribute__((used)) static void FUNC1(void)
{
    bta_ag_co_cb.sequence_number = 0;
    bta_ag_co_cb.decode_first_pkt = true;
    bta_ag_co_cb.encode_first_pkt = true;
    bta_ag_co_cb.is_bad_frame =  false;

    bta_ag_co_cb.encoder.sbc_mode = SBC_MODE_MSBC;
    bta_ag_co_cb.encoder.s16NumOfBlocks    = 15;
    bta_ag_co_cb.encoder.s16NumOfSubBands  = 8;
    bta_ag_co_cb.encoder.s16AllocationMethod = SBC_LOUDNESS;
    bta_ag_co_cb.encoder.s16BitPool   = 26;
    bta_ag_co_cb.encoder.s16ChannelMode = SBC_MONO;
    bta_ag_co_cb.encoder.s16NumOfChannels = 1;
    bta_ag_co_cb.encoder.s16SamplingFreq = SBC_sf16000;

    FUNC0(&(bta_ag_co_cb.encoder));
}