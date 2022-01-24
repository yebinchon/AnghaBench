#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {TYPE_2__* stream; } ;
struct TYPE_6__ {TYPE_1__* codecpar; } ;
struct TYPE_5__ {int extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_3__ MatroskaTrack ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC5 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(MatroskaTrack *track, uint8_t *src,
                                  uint8_t **pdst, int *size)
{
    uint8_t *dst = NULL;
    int dstlen   = 0;
    int srclen   = *size;
    uint32_t samples;
    uint16_t ver;
    int ret, offset = 0;

    if (srclen < 12 || track->stream->codecpar->extradata_size < 2)
        return AVERROR_INVALIDDATA;

    ver = FUNC1(track->stream->codecpar->extradata);

    samples = FUNC2(src);
    src    += 4;
    srclen -= 4;

    while (srclen >= 8) {
        int multiblock;
        uint32_t blocksize;
        uint8_t *tmp;

        uint32_t flags = FUNC2(src);
        uint32_t crc   = FUNC2(src + 4);
        src    += 8;
        srclen -= 8;

        multiblock = (flags & 0x1800) != 0x1800;
        if (multiblock) {
            if (srclen < 4) {
                ret = AVERROR_INVALIDDATA;
                goto fail;
            }
            blocksize = FUNC2(src);
            src      += 4;
            srclen   -= 4;
        } else
            blocksize = srclen;

        if (blocksize > srclen) {
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }

        tmp = FUNC7(dst, dstlen + blocksize + 32 + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!tmp) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        dst     = tmp;
        dstlen += blocksize + 32;

        FUNC4(dst + offset, FUNC5('w', 'v', 'p', 'k'));   // tag
        FUNC4(dst + offset +  4, blocksize + 24);         // blocksize - 8
        FUNC3(dst + offset +  8, ver);                    // version
        FUNC3(dst + offset + 10, 0);                      // track/index_no
        FUNC4(dst + offset + 12, 0);                      // total samples
        FUNC4(dst + offset + 16, 0);                      // block index
        FUNC4(dst + offset + 20, samples);                // number of samples
        FUNC4(dst + offset + 24, flags);                  // flags
        FUNC4(dst + offset + 28, crc);                    // crc
        FUNC8(dst + offset + 32, src, blocksize);          // block data

        src    += blocksize;
        srclen -= blocksize;
        offset += blocksize + 32;
    }

    FUNC9(dst + dstlen, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    *pdst = dst;
    *size = dstlen;

    return 0;

fail:
    FUNC6(&dst);
    return ret;
}