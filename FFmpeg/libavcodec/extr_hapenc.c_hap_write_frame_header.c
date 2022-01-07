
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int chunk_count; int opt_tex_fmt; TYPE_1__* chunks; } ;
struct TYPE_5__ {int compressor; int compressed_size; } ;
typedef int PutByteContext ;
typedef TYPE_2__ HapContext ;


 int HAP_COMP_COMPLEX ;
 int HAP_HDR_LONG ;
 int HAP_HDR_SHORT ;
 int HAP_ST_COMPRESSOR_TABLE ;
 int HAP_ST_DECODE_INSTRUCTIONS ;
 int HAP_ST_SIZE_TABLE ;
 int bytestream2_init_writer (int *,int *,int) ;
 int bytestream2_put_byte (int *,int) ;
 int bytestream2_put_le32 (int *,int ) ;
 int hap_decode_instructions_length (TYPE_2__*) ;
 int hap_write_section_header (int *,int ,int,int) ;

__attribute__((used)) static void hap_write_frame_header(HapContext *ctx, uint8_t *dst, int frame_length)
{
    PutByteContext pbc;
    int i;

    bytestream2_init_writer(&pbc, dst, frame_length);
    if (ctx->chunk_count == 1) {

        hap_write_section_header(&pbc, HAP_HDR_LONG, frame_length - 8,
                                 ctx->chunks[0].compressor | ctx->opt_tex_fmt);
    } else {

        hap_write_section_header(&pbc, HAP_HDR_LONG, frame_length - 8,
                                 HAP_COMP_COMPLEX | ctx->opt_tex_fmt);
        hap_write_section_header(&pbc, HAP_HDR_SHORT, hap_decode_instructions_length(ctx),
                                 HAP_ST_DECODE_INSTRUCTIONS);
        hap_write_section_header(&pbc, HAP_HDR_SHORT, ctx->chunk_count,
                                 HAP_ST_COMPRESSOR_TABLE);

        for (i = 0; i < ctx->chunk_count; i++) {
            bytestream2_put_byte(&pbc, ctx->chunks[i].compressor >> 4);
        }

        hap_write_section_header(&pbc, HAP_HDR_SHORT, ctx->chunk_count * 4,
                                 HAP_ST_SIZE_TABLE);

        for (i = 0; i < ctx->chunk_count; i++) {
            bytestream2_put_le32(&pbc, ctx->chunks[i].compressed_size);
        }
    }
}
