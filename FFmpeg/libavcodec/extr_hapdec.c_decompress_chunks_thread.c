
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_10__ {TYPE_2__* priv_data; } ;
struct TYPE_9__ {int uncompressed_offset; scalar_t__ compressor; int compressed_size; scalar_t__ compressed_offset; } ;
struct TYPE_7__ {scalar_t__ buffer; } ;
struct TYPE_8__ {int tex_size; TYPE_1__ gbc; int * tex_buf; TYPE_3__* chunks; } ;
typedef TYPE_2__ HapContext ;
typedef TYPE_3__ HapChunk ;
typedef int GetByteContext ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ HAP_COMP_NONE ;
 scalar_t__ HAP_COMP_SNAPPY ;
 int av_log (TYPE_4__*,int ,char*) ;
 int bytestream2_get_buffer (int *,int *,int ) ;
 int bytestream2_init (int *,scalar_t__,int ) ;
 int ff_snappy_uncompress (int *,int *,int *) ;

__attribute__((used)) static int decompress_chunks_thread(AVCodecContext *avctx, void *arg,
                                    int chunk_nb, int thread_nb)
{
    HapContext *ctx = avctx->priv_data;

    HapChunk *chunk = &ctx->chunks[chunk_nb];
    GetByteContext gbc;
    uint8_t *dst = ctx->tex_buf + chunk->uncompressed_offset;

    bytestream2_init(&gbc, ctx->gbc.buffer + chunk->compressed_offset, chunk->compressed_size);

    if (chunk->compressor == HAP_COMP_SNAPPY) {
        int ret;
        int64_t uncompressed_size = ctx->tex_size;


        ret = ff_snappy_uncompress(&gbc, dst, &uncompressed_size);
        if (ret < 0) {
             av_log(avctx, AV_LOG_ERROR, "Snappy uncompress error\n");
             return ret;
        }
    } else if (chunk->compressor == HAP_COMP_NONE) {
        bytestream2_get_buffer(&gbc, dst, chunk->compressed_size);
    }

    return 0;
}
