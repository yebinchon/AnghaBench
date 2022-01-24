#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VdpDecoderProfile ;
struct TYPE_4__ {int profile; int /*<<< orphan*/  level; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOTSUP ; 
#define  FF_PROFILE_VP9_0 131 
#define  FF_PROFILE_VP9_1 130 
#define  FF_PROFILE_VP9_2 129 
#define  FF_PROFILE_VP9_3 128 
 int /*<<< orphan*/  VDP_DECODER_PROFILE_VP9_PROFILE_0 ; 
 int /*<<< orphan*/  VDP_DECODER_PROFILE_VP9_PROFILE_1 ; 
 int /*<<< orphan*/  VDP_DECODER_PROFILE_VP9_PROFILE_2 ; 
 int /*<<< orphan*/  VDP_DECODER_PROFILE_VP9_PROFILE_3 ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;
    uint32_t level = avctx->level;

    switch (avctx->profile) {
    case FF_PROFILE_VP9_0:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_0;
        break;
    case FF_PROFILE_VP9_1:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_1;
        break;
    case FF_PROFILE_VP9_2:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_2;
        break;
    case FF_PROFILE_VP9_3:
        profile = VDP_DECODER_PROFILE_VP9_PROFILE_3;
        break;
    default:
        return FUNC0(ENOTSUP);
    }

    return FUNC1(avctx, profile, level);
}