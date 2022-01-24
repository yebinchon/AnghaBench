#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct TYPE_12__ {int palette_has_changed; int key_frame; int* linesize; scalar_t__* data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_11__ {int width; int height; int /*<<< orphan*/  codec_tag; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int size; scalar_t__ data; } ;
struct TYPE_9__ {TYPE_5__* pic; int /*<<< orphan*/  full_last; int /*<<< orphan*/  full_tbl; int /*<<< orphan*/  mmap_last; int /*<<< orphan*/  mmap_tbl; int /*<<< orphan*/  mclr_last; int /*<<< orphan*/  mclr_tbl; int /*<<< orphan*/  type_last; int /*<<< orphan*/  type_tbl; } ;
typedef  TYPE_1__ SmackVContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (char,char,char,char) ; 
#define  SMK_BLK_FILL 131 
#define  SMK_BLK_FULL 130 
#define  SMK_BLK_MONO 129 
#define  SMK_BLK_SKIP 128 
 int FUNC2 (void*,TYPE_5__*) ; 
 int* block_runs ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC6 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    SmackVContext * const smk = avctx->priv_data;
    uint8_t *out;
    uint32_t *pal;
    GetByteContext gb2;
    GetBitContext gb;
    int blocks, blk, bw, bh;
    int i, ret;
    int stride;
    int flags;

    if (avpkt->size <= 769)
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC6(avctx, smk->pic, 0)) < 0)
        return ret;

    /* make the palette available on the way out */
    pal = (uint32_t*)smk->pic->data[1];
    FUNC5(&gb2, avpkt->data, avpkt->size);
    flags = FUNC4(&gb2);
    smk->pic->palette_has_changed = flags & 1;
    smk->pic->key_frame = !!(flags & 2);
    if (smk->pic->key_frame)
        smk->pic->pict_type = AV_PICTURE_TYPE_I;
    else
        smk->pic->pict_type = AV_PICTURE_TYPE_P;

    for(i = 0; i < 256; i++)
        *pal++ = 0xFFU << 24 | FUNC3(&gb2);

    FUNC9(smk->mmap_tbl, smk->mmap_last);
    FUNC9(smk->mclr_tbl, smk->mclr_last);
    FUNC9(smk->full_tbl, smk->full_last);
    FUNC9(smk->type_tbl, smk->type_last);
    if ((ret = FUNC8(&gb, avpkt->data + 769, avpkt->size - 769)) < 0)
        return ret;

    blk = 0;
    bw = avctx->width >> 2;
    bh = avctx->height >> 2;
    blocks = bw * bh;
    stride = smk->pic->linesize[0];
    while(blk < blocks) {
        int type, run, mode;
        uint16_t pix;

        type = FUNC10(&gb, smk->type_tbl, smk->type_last);
        run = block_runs[(type >> 2) & 0x3F];
        switch(type & 3){
        case SMK_BLK_MONO:
            while(run-- && blk < blocks){
                int clr, map;
                int hi, lo;
                clr = FUNC10(&gb, smk->mclr_tbl, smk->mclr_last);
                map = FUNC10(&gb, smk->mmap_tbl, smk->mmap_last);
                out = smk->pic->data[0] + (blk / bw) * (stride * 4) + (blk % bw) * 4;
                hi = clr >> 8;
                lo = clr & 0xFF;
                for(i = 0; i < 4; i++) {
                    if(map & 1) out[0] = hi; else out[0] = lo;
                    if(map & 2) out[1] = hi; else out[1] = lo;
                    if(map & 4) out[2] = hi; else out[2] = lo;
                    if(map & 8) out[3] = hi; else out[3] = lo;
                    map >>= 4;
                    out += stride;
                }
                blk++;
            }
            break;
        case SMK_BLK_FULL:
            mode = 0;
            if(avctx->codec_tag == FUNC1('S', 'M', 'K', '4')) { // In case of Smacker v4 we have three modes
                if(FUNC7(&gb)) mode = 1;
                else if(FUNC7(&gb)) mode = 2;
            }
            while(run-- && blk < blocks){
                out = smk->pic->data[0] + (blk / bw) * (stride * 4) + (blk % bw) * 4;
                switch(mode){
                case 0:
                    for(i = 0; i < 4; i++) {
                        pix = FUNC10(&gb, smk->full_tbl, smk->full_last);
                        FUNC0(out+2,pix);
                        pix = FUNC10(&gb, smk->full_tbl, smk->full_last);
                        FUNC0(out,pix);
                        out += stride;
                    }
                    break;
                case 1:
                    pix = FUNC10(&gb, smk->full_tbl, smk->full_last);
                    out[0] = out[1] = pix & 0xFF;
                    out[2] = out[3] = pix >> 8;
                    out += stride;
                    out[0] = out[1] = pix & 0xFF;
                    out[2] = out[3] = pix >> 8;
                    out += stride;
                    pix = FUNC10(&gb, smk->full_tbl, smk->full_last);
                    out[0] = out[1] = pix & 0xFF;
                    out[2] = out[3] = pix >> 8;
                    out += stride;
                    out[0] = out[1] = pix & 0xFF;
                    out[2] = out[3] = pix >> 8;
                    break;
                case 2:
                    for(i = 0; i < 2; i++) {
                        uint16_t pix1, pix2;
                        pix2 = FUNC10(&gb, smk->full_tbl, smk->full_last);
                        pix1 = FUNC10(&gb, smk->full_tbl, smk->full_last);
                        FUNC0(out,pix1);
                        FUNC0(out+2,pix2);
                        out += stride;
                        FUNC0(out,pix1);
                        FUNC0(out+2,pix2);
                        out += stride;
                    }
                    break;
                }
                blk++;
            }
            break;
        case SMK_BLK_SKIP:
            while(run-- && blk < blocks)
                blk++;
            break;
        case SMK_BLK_FILL:
            mode = type >> 8;
            while(run-- && blk < blocks){
                uint32_t col;
                out = smk->pic->data[0] + (blk / bw) * (stride * 4) + (blk % bw) * 4;
                col = mode * 0x01010101U;
                for(i = 0; i < 4; i++) {
                    *((uint32_t*)out) = col;
                    out += stride;
                }
                blk++;
            }
            break;
        }

    }

    if ((ret = FUNC2(data, smk->pic)) < 0)
        return ret;

    *got_frame = 1;

    /* always report that the buffer was completely consumed */
    return avpkt->size;
}