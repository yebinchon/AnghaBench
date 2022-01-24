#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  table; } ;
typedef  TYPE_2__ VLC ;
struct TYPE_9__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_12__ {scalar_t__ tmpbuf; TYPE_1__ bdsp; int /*<<< orphan*/  avctx; } ;
struct TYPE_11__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_3__ Node ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_4__ FrapsContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FF_HUFFMAN_FLAG_ZERO_COUNT ; 
 int /*<<< orphan*/  VLC_BITS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  huff_cmp ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC7(FrapsContext *s, uint8_t *dst, int stride, int w,
                               int h, const uint8_t *src, int size, int Uoff,
                               const int step)
{
    int i, j, ret;
    GetBitContext gb;
    VLC vlc;
    Node nodes[512];

    for (i = 0; i < 256; i++)
        nodes[i].count = FUNC0(&src);
    size -= 1024;
    if ((ret = FUNC2(s->avctx, &vlc, 256, VLC_BITS,
                                  nodes, huff_cmp,
                                  FF_HUFFMAN_FLAG_ZERO_COUNT)) < 0)
        return ret;
    /* we have built Huffman table and are ready to decode plane */

    /* convert bits so they may be used by standard bitreader */
    s->bdsp.bswap_buf((uint32_t *) s->tmpbuf,
                      (const uint32_t *) src, size >> 2);

    if ((ret = FUNC5(&gb, s->tmpbuf, size)) < 0)
        return ret;

    for (j = 0; j < h; j++) {
        for (i = 0; i < w*step; i += step) {
            dst[i] = FUNC4(&gb, vlc.table, VLC_BITS, 3);
            /* lines are stored as deltas between previous lines
             * and we need to add 0x80 to the first lines of chroma planes
             */
            if (j)
                dst[i] += dst[i - stride];
            else if (Uoff)
                dst[i] += 0x80;
            if (FUNC3(&gb) < 0) {
                FUNC1(&vlc);
                return AVERROR_INVALIDDATA;
            }
        }
        dst += stride;
    }
    FUNC1(&vlc);
    return 0;
}