#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame_size; int /*<<< orphan*/  frame; int /*<<< orphan*/  pb; int /*<<< orphan*/  g2; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ GDVContext ;
typedef  TYPE_2__ Bits8 ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 unsigned int PREAMBLE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, unsigned skip)
{
    GDVContext *gdv = avctx->priv_data;
    GetByteContext *gb = &gdv->gb;
    GetByteContext *g2 = &gdv->g2;
    PutByteContext *pb = &gdv->pb;
    Bits8 bits = { 0 };

    FUNC4(g2, gdv->frame, gdv->frame_size);
    FUNC6(pb, skip + PREAMBLE_SIZE);

    while (FUNC2(pb) > 0 && FUNC1(gb) > 0) {
        int tag = FUNC8(&bits, gb);
        if (FUNC1(gb) < 1)
            return AVERROR_INVALIDDATA;
        if (tag == 0) {
            FUNC5(pb, FUNC0(gb));
        } else if (tag == 1) {
            int b = FUNC0(gb);
            int len = (b & 0xF) + 3;
            int top = b >> 4;
            int off = (FUNC0(gb) << 4) + top - 4096;
            FUNC7(pb, g2, off, len);
        } else if (tag == 2) {
            int len;
            int b = FUNC0(gb);
            if (b == 0) {
                return 0;
            }
            if (b != 0xFF) {
                len = b;
            } else {
                len = FUNC3(gb);
            }
            FUNC6(pb, len + 1);
        } else {
            int b = FUNC0(gb);
            int len = (b & 0x3) + 2;
            int off = -(b >> 2) - 1;
            FUNC7(pb, g2, off, len);
        }
    }
    if (FUNC2(pb) > 0)
        return AVERROR_INVALIDDATA;
    return 0;
}