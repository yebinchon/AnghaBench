
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_19__ ;


typedef enum HapSectionType { ____Placeholder_HapSectionType } HapSectionType ;
struct TYPE_26__ {TYPE_7__* f; } ;
typedef TYPE_2__ ThreadFrame ;
struct TYPE_30__ {int key_frame; int pict_type; } ;
struct TYPE_29__ {int coded_width; int coded_height; int (* execute2 ) (TYPE_5__*,int ,TYPE_7__*,scalar_t__*,int) ;TYPE_1__* codec; TYPE_3__* priv_data; } ;
struct TYPE_28__ {int size; int data; } ;
struct TYPE_24__ {int buffer; } ;
struct TYPE_27__ {int tex_rat; int texture_count; int tex_size; scalar_t__* chunk_results; int chunk_count; int slice_count; int tex_buf; int tex_data; TYPE_19__ gbc; scalar_t__ texture_section_size; int tex_rat2; } ;
struct TYPE_25__ {scalar_t__ update_thread_context; } ;
typedef TYPE_3__ HapContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int FFMIN (scalar_t__,int ) ;
 int SEEK_SET ;
 int TEXTURE_BLOCK_H ;
 int TEXTURE_BLOCK_W ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_reallocp (int *,int) ;
 int bytestream2_get_bytes_left (TYPE_19__*) ;
 int bytestream2_init (TYPE_19__*,int ,int) ;
 int bytestream2_seek (TYPE_19__*,int,int ) ;
 int decompress_chunks_thread ;
 int decompress_texture2_thread ;
 int decompress_texture_thread ;
 int ff_hap_parse_section_header (TYPE_19__*,int*,int*) ;
 int ff_thread_finish_setup (TYPE_5__*) ;
 int ff_thread_get_buffer (TYPE_5__*,TYPE_2__*,int ) ;
 scalar_t__ hap_can_use_tex_in_place (TYPE_3__*) ;
 int hap_parse_frame_header (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int ,TYPE_7__*,scalar_t__*,int) ;
 int stub2 (TYPE_5__*,int ,TYPE_7__*,scalar_t__*,int) ;
 int stub3 (TYPE_5__*,int ,TYPE_7__*,scalar_t__*,int) ;

__attribute__((used)) static int hap_decode(AVCodecContext *avctx, void *data,
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

    bytestream2_init(&ctx->gbc, avpkt->data, avpkt->size);

    tex_rat[0] = ctx->tex_rat;


    if (ctx->texture_count == 2) {
        ret = ff_hap_parse_section_header(&ctx->gbc, &section_size, &section_type);
        if (ret != 0)
            return ret;
        if ((section_type & 0x0F) != 0x0D) {
            av_log(avctx, AV_LOG_ERROR, "Invalid section type in 2 textures mode %#04x.\n", section_type);
            return AVERROR_INVALIDDATA;
        }
        start_texture_section = 4;
        tex_rat[1] = ctx->tex_rat2;
    }


    tframe.f = data;
    ret = ff_thread_get_buffer(avctx, &tframe, 0);
    if (ret < 0)
        return ret;

    for (t = 0; t < ctx->texture_count; t++) {
        bytestream2_seek(&ctx->gbc, start_texture_section, SEEK_SET);


        ret = hap_parse_frame_header(avctx);
        if (ret < 0)
            return ret;

        start_texture_section += ctx->texture_section_size + 4;

        if (avctx->codec->update_thread_context)
            ff_thread_finish_setup(avctx);


        if (hap_can_use_tex_in_place(ctx)) {

            ctx->tex_data = ctx->gbc.buffer;
            tex_size = FFMIN(ctx->texture_section_size, bytestream2_get_bytes_left(&ctx->gbc));
        } else {

            ret = av_reallocp(&ctx->tex_buf, ctx->tex_size);
            if (ret < 0)
                return ret;

            avctx->execute2(avctx, decompress_chunks_thread, ((void*)0),
                            ctx->chunk_results, ctx->chunk_count);

            for (i = 0; i < ctx->chunk_count; i++) {
                if (ctx->chunk_results[i] < 0)
                    return ctx->chunk_results[i];
            }

            ctx->tex_data = ctx->tex_buf;
            tex_size = ctx->tex_size;
        }

        if (tex_size < (avctx->coded_width / TEXTURE_BLOCK_W)
            *(avctx->coded_height / TEXTURE_BLOCK_H)
            *tex_rat[t]) {
            av_log(avctx, AV_LOG_ERROR, "Insufficient data\n");
            return AVERROR_INVALIDDATA;
        }


        if (t == 0){
            avctx->execute2(avctx, decompress_texture_thread, tframe.f, ((void*)0), ctx->slice_count);
        } else{
            tframe.f = data;
            avctx->execute2(avctx, decompress_texture2_thread, tframe.f, ((void*)0), ctx->slice_count);
        }
    }


    tframe.f->pict_type = AV_PICTURE_TYPE_I;
    tframe.f->key_frame = 1;
    *got_frame = 1;

    return avpkt->size;
}
