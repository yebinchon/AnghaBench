#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int** len; int planes; int /*<<< orphan*/ * vlc; scalar_t__ (* huff_build ) (int /*<<< orphan*/ *,int*) ;} ;
typedef  TYPE_1__ MagicYUVContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int**,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, GetBitContext *gbit, int max)
{
    MagicYUVContext *s = avctx->priv_data;
    int i = 0, j = 0, k;

    FUNC4(s->len, 0, sizeof(s->len));
    while (FUNC2(gbit) >= 8) {
        int b = FUNC1(gbit, 1);
        int x = FUNC1(gbit, 7);
        int l = FUNC3(gbit, b * 8) + 1;

        for (k = 0; k < l; k++)
            if (j + k < max)
                s->len[i][j + k] = x;

        j += l;
        if (j == max) {
            j = 0;
            if (s->huff_build(&s->vlc[i], s->len[i])) {
                FUNC0(avctx, AV_LOG_ERROR, "Cannot build Huffman codes\n");
                return AVERROR_INVALIDDATA;
            }
            i++;
            if (i == s->planes) {
                break;
            }
        } else if (j > max) {
            FUNC0(avctx, AV_LOG_ERROR, "Invalid Huffman codes\n");
            return AVERROR_INVALIDDATA;
        }
    }

    if (i != s->planes) {
        FUNC0(avctx, AV_LOG_ERROR, "Huffman tables too short\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}