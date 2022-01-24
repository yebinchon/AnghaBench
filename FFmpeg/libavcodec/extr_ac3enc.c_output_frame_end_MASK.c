#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int* buf; } ;
struct TYPE_6__ {int frame_size; int* crc_inv; int frame_size_min; scalar_t__ eac3; TYPE_2__ pb; } ;
typedef  int /*<<< orphan*/  AVCRC ;
typedef  TYPE_1__ AC3EncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_16_ANSI ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  CRC16_POLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int,int*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*) ; 
 int* FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC10(AC3EncodeContext *s)
{
    const AVCRC *crc_ctx = FUNC4(AV_CRC_16_ANSI);
    int frame_size_58, pad_bytes, crc1, crc2_partial, crc2, crc_inv;
    uint8_t *frame;

    frame_size_58 = ((s->frame_size >> 2) + (s->frame_size >> 4)) << 1;

    /* pad the remainder of the frame with zeros */
    FUNC1(s->frame_size * 8 - FUNC8(&s->pb) >= 18);
    FUNC5(&s->pb);
    frame = s->pb.buf;
    pad_bytes = s->frame_size - (FUNC9(&s->pb) - frame) - 2;
    FUNC1(pad_bytes >= 0);
    if (pad_bytes > 0)
        FUNC6(FUNC9(&s->pb), 0, pad_bytes);

    if (s->eac3) {
        /* compute crc2 */
        crc2_partial = FUNC3(crc_ctx, 0, frame + 2, s->frame_size - 5);
    } else {
    /* compute crc1 */
    /* this is not so easy because it is at the beginning of the data... */
    crc1    = FUNC2(FUNC3(crc_ctx, 0, frame + 4, frame_size_58 - 4));
    crc_inv = s->crc_inv[s->frame_size > s->frame_size_min];
    crc1    = FUNC7(crc_inv, crc1, CRC16_POLY);
    FUNC0(frame + 2, crc1);

    /* compute crc2 */
    crc2_partial = FUNC3(crc_ctx, 0, frame + frame_size_58,
                          s->frame_size - frame_size_58 - 3);
    }
    crc2 = FUNC3(crc_ctx, crc2_partial, frame + s->frame_size - 3, 1);
    /* ensure crc2 does not match sync word by flipping crcrsv bit if needed */
    if (crc2 == 0x770B) {
        frame[s->frame_size - 3] ^= 0x1;
        crc2 = FUNC3(crc_ctx, crc2_partial, frame + s->frame_size - 3, 1);
    }
    crc2 = FUNC2(crc2);
    FUNC0(frame + s->frame_size - 2, crc2);
}