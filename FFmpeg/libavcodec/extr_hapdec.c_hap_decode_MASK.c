#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_19__ ;

/* Type definitions */
typedef  enum HapSectionType { ____Placeholder_HapSectionType } HapSectionType ;
struct TYPE_26__ {TYPE_7__* f; } ;
typedef  TYPE_2__ ThreadFrame ;
struct TYPE_30__ {int key_frame; int /*<<< orphan*/  pict_type; } ;
struct TYPE_29__ {int coded_width; int coded_height; int /*<<< orphan*/  (* execute2 ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*,scalar_t__*,int) ;TYPE_1__* codec; TYPE_3__* priv_data; } ;
struct TYPE_28__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_24__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_27__ {int tex_rat; int texture_count; int tex_size; scalar_t__* chunk_results; int chunk_count; int slice_count; int /*<<< orphan*/  tex_buf; int /*<<< orphan*/  tex_data; TYPE_19__ gbc; scalar_t__ texture_section_size; int /*<<< orphan*/  tex_rat2; } ;
struct TYPE_25__ {scalar_t__ update_thread_context; } ;
typedef  TYPE_3__ HapContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int TEXTURE_BLOCK_H ; 
 int TEXTURE_BLOCK_W ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_19__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_19__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decompress_chunks_thread ; 
 int /*<<< orphan*/  decompress_texture2_thread ; 
 int /*<<< orphan*/  decompress_texture_thread ; 
 int FUNC6 (TYPE_19__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int FUNC8 (TYPE_5__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_7__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx, void *data,
                      int *got_frame, AVPacket *avpkt)
{
    HapContext *ctx = avctx->priv_data;
    ThreadFrame tframe;
    int ret, i, t;
    int tex_size;
    int section_size;
    enum HapSectionType section_type;
    int start_texture_section = 0;
    int tex_rat[2] = {0, 0};

    FUNC4(&ctx->gbc, avpkt->data, avpkt->size);

    tex_rat[0] = ctx->tex_rat;

    /* check for multi texture header */
    if (ctx->texture_count == 2) {
        ret = FUNC6(&ctx->gbc, &section_size, &section_type);
        if (ret != 0)
            return ret;
        if ((section_type & 0x0F) != 0x0D) {
            FUNC1(avctx, AV_LOG_ERROR, "Invalid section type in 2 textures mode %#04x.\n", section_type);
            return AVERROR_INVALIDDATA;
        }
        start_texture_section = 4;
        tex_rat[1] = ctx->tex_rat2;
    }

    /* Get the output frame ready to receive data */
    tframe.f = data;
    ret = FUNC8(avctx, &tframe, 0);
    if (ret < 0)
        return ret;

    for (t = 0; t < ctx->texture_count; t++) {
        FUNC5(&ctx->gbc, start_texture_section, SEEK_SET);

        /* Check for section header */
        ret = FUNC10(avctx);
        if (ret < 0)
            return ret;

        start_texture_section += ctx->texture_section_size + 4;

        if (avctx->codec->update_thread_context)
            FUNC7(avctx);

        /* Unpack the DXT texture */
        if (FUNC9(ctx)) {
            /* Only DXTC texture compression in a contiguous block */
            ctx->tex_data = ctx->gbc.buffer;
            tex_size = FUNC0(ctx->texture_section_size, FUNC3(&ctx->gbc));
        } else {
            /* Perform the second-stage decompression */
            ret = FUNC2(&ctx->tex_buf, ctx->tex_size);
            if (ret < 0)
                return ret;

            avctx->execute2(avctx, decompress_chunks_thread, NULL,
                            ctx->chunk_results, ctx->chunk_count);

            for (i = 0; i < ctx->chunk_count; i++) {
                if (ctx->chunk_results[i] < 0)
                    return ctx->chunk_results[i];
            }

            ctx->tex_data = ctx->tex_buf;
            tex_size = ctx->tex_size;
        }

        if (tex_size < (avctx->coded_width  / TEXTURE_BLOCK_W)
            *(avctx->coded_height / TEXTURE_BLOCK_H)
            *tex_rat[t]) {
            FUNC1(avctx, AV_LOG_ERROR, "Insufficient data\n");
            return AVERROR_INVALIDDATA;
        }

        /* Use the decompress function on the texture, one block per thread */
        if (t == 0){
            avctx->execute2(avctx, decompress_texture_thread, tframe.f, NULL, ctx->slice_count);
        } else{
            tframe.f = data;
            avctx->execute2(avctx, decompress_texture2_thread, tframe.f, NULL, ctx->slice_count);
        }
    }

    /* Frame is ready to be output */
    tframe.f->pict_type = AV_PICTURE_TYPE_I;
    tframe.f->key_frame = 1;
    *got_frame = 1;

    return avpkt->size;
}