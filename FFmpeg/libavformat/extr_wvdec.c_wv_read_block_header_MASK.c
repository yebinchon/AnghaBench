#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_21__ {int flags; int version; scalar_t__ blocksize; scalar_t__ final; scalar_t__ initial; int /*<<< orphan*/  samples; } ;
struct TYPE_18__ {scalar_t__ pos; scalar_t__ apetag_start; int multichannel; int chan; int chmask; int bpp; int rate; TYPE_6__ header; int /*<<< orphan*/  block_parsed; int /*<<< orphan*/  block_header; } ;
typedef  TYPE_1__ WVContext ;
struct TYPE_20__ {TYPE_1__* priv_data; } ;
struct TYPE_19__ {int seekable; } ;
typedef  TYPE_2__ AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int AV_CH_LAYOUT_MONO ; 
 int AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int WV_DSD ; 
 int WV_HEADER_SIZE ; 
 int WV_MONO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,...) ; 
 int FUNC11 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int* wv_rates ; 

__attribute__((used)) static int FUNC12(AVFormatContext *ctx, AVIOContext *pb)
{
    WVContext *wc = ctx->priv_data;
    int ret;
    int rate, bpp, chan;
    uint32_t chmask, flags;

    wc->pos = FUNC9(pb);

    /* don't return bogus packets with the ape tag data */
    if (wc->apetag_start && wc->pos >= wc->apetag_start)
        return AVERROR_EOF;

    ret = FUNC3(pb, wc->block_header, WV_HEADER_SIZE);
    if (ret != WV_HEADER_SIZE)
        return (ret < 0) ? ret : AVERROR_EOF;

    ret = FUNC11(&wc->header, wc->block_header);
    if (ret < 0) {
        FUNC0(ctx, AV_LOG_ERROR, "Invalid block header.\n");
        return ret;
    }

    if (wc->header.flags & WV_DSD) {
        FUNC10(ctx, "WV DSD");
        return AVERROR_PATCHWELCOME;
    }

    if (wc->header.version < 0x402 || wc->header.version > 0x410) {
        FUNC10(ctx, "WV version 0x%03X",
                                      wc->header.version);
        return AVERROR_PATCHWELCOME;
    }

    /* Blocks with zero samples don't contain actual audio information
     * and should be ignored */
    if (!wc->header.samples)
        return 0;
    // parse flags
    flags  = wc->header.flags;
    bpp    = ((flags & 3) + 1) << 3;
    chan   = 1 + !(flags & WV_MONO);
    chmask = flags & WV_MONO ? AV_CH_LAYOUT_MONO : AV_CH_LAYOUT_STEREO;
    rate   = wv_rates[(flags >> 23) & 0xF];
    wc->multichannel = !(wc->header.initial && wc->header.final);
    if (wc->multichannel) {
        chan   = wc->chan;
        chmask = wc->chmask;
    }
    if ((rate == -1 || !chan) && !wc->block_parsed) {
        int64_t block_end = FUNC9(pb) + wc->header.blocksize;
        if (!(pb->seekable & AVIO_SEEKABLE_NORMAL)) {
            FUNC0(ctx, AV_LOG_ERROR,
                   "Cannot determine additional parameters\n");
            return AVERROR_INVALIDDATA;
        }
        while (FUNC9(pb) < block_end && !FUNC1(pb)) {
            int id, size;
            id   = FUNC2(pb);
            size = (id & 0x80) ? FUNC5(pb) : FUNC2(pb);
            size <<= 1;
            if (id & 0x40)
                size--;
            switch (id & 0x3F) {
            case 0xD:
                if (size <= 1) {
                    FUNC0(ctx, AV_LOG_ERROR,
                           "Insufficient channel information\n");
                    return AVERROR_INVALIDDATA;
                }
                chan = FUNC2(pb);
                switch (size - 2) {
                case 0:
                    chmask = FUNC2(pb);
                    break;
                case 1:
                    chmask = FUNC4(pb);
                    break;
                case 2:
                    chmask = FUNC5(pb);
                    break;
                case 3:
                    chmask = FUNC6(pb);
                    break;
                case 4:
                    FUNC8(pb, 1);
                    chan  |= (FUNC2(pb) & 0xF) << 8;
                    chan  += 1;
                    chmask = FUNC5(pb);
                    break;
                case 5:
                    FUNC8(pb, 1);
                    chan  |= (FUNC2(pb) & 0xF) << 8;
                    chan  += 1;
                    chmask = FUNC6(pb);
                    break;
                default:
                    FUNC0(ctx, AV_LOG_ERROR,
                           "Invalid channel info size %d\n", size);
                    return AVERROR_INVALIDDATA;
                }
                break;
            case 0x27:
                rate = FUNC5(pb);
                break;
            default:
                FUNC8(pb, size);
            }
            if (id & 0x40)
                FUNC8(pb, 1);
        }
        if (rate == -1) {
            FUNC0(ctx, AV_LOG_ERROR,
                   "Cannot determine custom sampling rate\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC7(pb, block_end - wc->header.blocksize, SEEK_SET);
    }
    if (!wc->bpp)
        wc->bpp    = bpp;
    if (!wc->chan)
        wc->chan   = chan;
    if (!wc->chmask)
        wc->chmask = chmask;
    if (!wc->rate)
        wc->rate   = rate;

    if (flags && bpp != wc->bpp) {
        FUNC0(ctx, AV_LOG_ERROR,
               "Bits per sample differ, this block: %i, header block: %i\n",
               bpp, wc->bpp);
        return AVERROR_INVALIDDATA;
    }
    if (flags && !wc->multichannel && chan != wc->chan) {
        FUNC0(ctx, AV_LOG_ERROR,
               "Channels differ, this block: %i, header block: %i\n",
               chan, wc->chan);
        return AVERROR_INVALIDDATA;
    }
    if (flags && rate != -1 && rate != wc->rate) {
        FUNC0(ctx, AV_LOG_ERROR,
               "Sampling rate differ, this block: %i, header block: %i\n",
               rate, wc->rate);
        return AVERROR_INVALIDDATA;
    }
    return 0;
}