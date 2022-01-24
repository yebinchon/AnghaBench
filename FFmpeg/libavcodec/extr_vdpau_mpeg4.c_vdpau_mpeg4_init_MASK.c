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
typedef  int /*<<< orphan*/  VdpDecoderProfile ;
struct TYPE_4__ {int profile; int /*<<< orphan*/  level; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOTSUP ; 
#define  FF_PROFILE_MPEG4_ADVANCED_SIMPLE 130 
#define  FF_PROFILE_MPEG4_SIMPLE 129 
#define  FF_PROFILE_UNKNOWN 128 
 int /*<<< orphan*/  VDP_DECODER_PROFILE_MPEG4_PART2_ASP ; 
 int /*<<< orphan*/  VDP_DECODER_PROFILE_MPEG4_PART2_SP ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx)
{
    VdpDecoderProfile profile;

    switch (avctx->profile) {
    case FF_PROFILE_MPEG4_SIMPLE:
        profile = VDP_DECODER_PROFILE_MPEG4_PART2_SP;
        break;
    // As any ASP decoder must be able to decode SP, this
    // should be a safe fallback if profile is unknown/unspecified.
    case FF_PROFILE_UNKNOWN:
    case FF_PROFILE_MPEG4_ADVANCED_SIMPLE:
        profile = VDP_DECODER_PROFILE_MPEG4_PART2_ASP;
        break;
    default:
        return FUNC0(ENOTSUP);
    }

    return FUNC1(avctx, profile, avctx->level);
}