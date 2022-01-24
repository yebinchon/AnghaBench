#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int frame_offset; int num_saved_bits; int packet_loss; int /*<<< orphan*/  gb; int /*<<< orphan*/  frame_data; int /*<<< orphan*/  pb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ WMAProDecodeCtx ;
struct TYPE_9__ {scalar_t__ buffer; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_2__ GetBitContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MAX_FRAMESIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC14(WMAProDecodeCtx *s, GetBitContext* gb, int len,
                      int append)
{
    int buflen;

    /** when the frame data does not need to be concatenated, the input buffer
        is reset and additional bits from the previous frame are copied
        and skipped later so that a fast byte copy is possible */

    if (!append) {
        s->frame_offset = FUNC6(gb) & 7;
        s->num_saved_bits = s->frame_offset;
        FUNC8(&s->pb, s->frame_data, MAX_FRAMESIZE);
    }

    buflen = (FUNC10(&s->pb) + len + 8) >> 3;

    if (len <= 0 || buflen > MAX_FRAMESIZE) {
        FUNC3(s->avctx, "Too small input buffer");
        s->packet_loss = 1;
        return;
    }

    FUNC1(len <= FUNC11(&s->pb));

    s->num_saved_bits += len;
    if (!append) {
        FUNC2(&s->pb, gb->buffer + (FUNC6(gb) >> 3),
                     s->num_saved_bits);
    } else {
        int align = 8 - (FUNC6(gb) & 7);
        align = FUNC0(align, len);
        FUNC9(&s->pb, align, FUNC5(gb, align));
        len -= align;
        FUNC2(&s->pb, gb->buffer + (FUNC6(gb) >> 3), len);
    }
    FUNC13(gb, len);

    {
        PutBitContext tmp = s->pb;
        FUNC4(&tmp);
    }

    FUNC7(&s->gb, s->frame_data, s->num_saved_bits);
    FUNC12(&s->gb, s->frame_offset);
}