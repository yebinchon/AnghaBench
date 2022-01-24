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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {int bits_per_coded_sample; int sample_rate; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int swap; } ;
typedef  TYPE_1__ ShortenContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ FUNC1 (char,char,float,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 long long FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, const uint8_t *header,
                              int header_size)
{
    ShortenContext *s = avctx->priv_data;
    int len, bps, exp;
    GetByteContext gb;
    uint64_t val;
    uint32_t tag;

    FUNC8(&gb, header, header_size);

    if (FUNC7(&gb) != FUNC1('F', 'O', 'R', 'M')) {
        FUNC2(avctx, AV_LOG_ERROR, "missing FORM tag\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC9(&gb, 4); /* chunk size */

    tag = FUNC7(&gb);
    if (tag != FUNC1('A', 'I', 'F', 'F') &&
        tag != FUNC1('A', 'I', 'F', 'C')) {
        FUNC2(avctx, AV_LOG_ERROR, "missing AIFF tag\n");
        return AVERROR_INVALIDDATA;
    }

    while (FUNC7(&gb) != FUNC1('C', 'O', 'M', 'M')) {
        len = FUNC4(&gb);
        if (len < 0 || FUNC6(&gb) < 18LL + len + (len&1)) {
            FUNC2(avctx, AV_LOG_ERROR, "no COMM chunk found\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC9(&gb, len + (len & 1));
    }
    len = FUNC4(&gb);

    if (len < 18) {
        FUNC2(avctx, AV_LOG_ERROR, "COMM chunk was too short\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC9(&gb, 6);
    bps = FUNC3(&gb);
    avctx->bits_per_coded_sample = bps;

    s->swap = tag == FUNC1('A', 'I', 'F', 'C');

    if (bps != 16 && bps != 8) {
        FUNC2(avctx, AV_LOG_ERROR, "unsupported number of bits per sample: %d\n", bps);
        return FUNC0(ENOSYS);
    }

    exp = FUNC3(&gb) - 16383 - 63;
    val = FUNC5(&gb);
    if (exp < -63 || exp > 63) {
        FUNC2(avctx, AV_LOG_ERROR, "exp %d is out of range\n", exp);
        return AVERROR_INVALIDDATA;
    }
    if (exp >= 0)
        avctx->sample_rate = val << exp;
    else
        avctx->sample_rate = (val + (1ULL<<(-exp-1))) >> -exp;
    len -= 18;
    if (len > 0)
        FUNC2(avctx, AV_LOG_INFO, "%d header bytes unparsed\n", len);

    return 0;
}