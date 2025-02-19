
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int decode_buffer_size; int* palette; int* codebook; int codebook_size; int* decode_buffer; int vector_height; int height; int width; int vqa_version; unsigned int next_codebook_buffer_index; int* next_codebook_buffer; scalar_t__ partial_countdown; scalar_t__ partial_count; int gb; int avctx; } ;
typedef TYPE_1__ VqaContext ;
struct TYPE_7__ {int* linesize; int** data; } ;
typedef TYPE_2__ AVFrame ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;






 unsigned int MAX_CODEBOOK_SIZE ;
 int SEEK_SET ;

 int av_bswap32 (unsigned int) ;
 int av_fourcc2str (int ) ;
 int av_log (int ,int ,char*,...) ;
 unsigned int bytestream2_get_be32 (int *) ;
 unsigned int bytestream2_get_be32u (int *) ;
 int bytestream2_get_buffer (int *,int*,unsigned int) ;
 unsigned int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_init (int *,int*,unsigned int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_skip (int *,unsigned int) ;
 unsigned int bytestream2_tell (int *) ;
 int decode_format80 (TYPE_1__*,unsigned int,int*,int,int) ;
 int memcpy (int*,int*,unsigned int) ;

__attribute__((used)) static int vqa_decode_chunk(VqaContext *s, AVFrame *frame)
{
    unsigned int chunk_type;
    unsigned int chunk_size;
    int byte_skip;
    unsigned int index = 0;
    int i;
    unsigned char r, g, b;
    int index_shift;
    int res;

    int cbf0_chunk = -1;
    int cbfz_chunk = -1;
    int cbp0_chunk = -1;
    int cbpz_chunk = -1;
    int cpl0_chunk = -1;
    int cplz_chunk = -1;
    int vptz_chunk = -1;

    int x, y;
    int lines = 0;
    int pixel_ptr;
    int vector_index = 0;
    int lobyte = 0;
    int hibyte = 0;
    int lobytes = 0;
    int hibytes = s->decode_buffer_size / 2;


    while (bytestream2_get_bytes_left(&s->gb) >= 8) {

        chunk_type = bytestream2_get_be32u(&s->gb);
        index = bytestream2_tell(&s->gb);
        chunk_size = bytestream2_get_be32u(&s->gb);

        switch (chunk_type) {

        case 134:
            cbf0_chunk = index;
            break;

        case 133:
            cbfz_chunk = index;
            break;

        case 132:
            cbp0_chunk = index;
            break;

        case 131:
            cbpz_chunk = index;
            break;

        case 130:
            cpl0_chunk = index;
            break;

        case 129:
            cplz_chunk = index;
            break;

        case 128:
            vptz_chunk = index;
            break;

        default:
            av_log(s->avctx, AV_LOG_ERROR, "Found unknown chunk type: %s (%08X)\n",
                   av_fourcc2str(av_bswap32(chunk_type)), chunk_type);
            break;
        }

        byte_skip = chunk_size & 0x01;
        bytestream2_skip(&s->gb, chunk_size + byte_skip);
    }


    if ((cpl0_chunk != -1) && (cplz_chunk != -1)) {


        av_log(s->avctx, AV_LOG_ERROR, "problem: found both CPL0 and CPLZ chunks\n");
        return AVERROR_INVALIDDATA;
    }


    if (cplz_chunk != -1) {



    }


    if (cpl0_chunk != -1) {

        bytestream2_seek(&s->gb, cpl0_chunk, SEEK_SET);
        chunk_size = bytestream2_get_be32(&s->gb);

        if (chunk_size / 3 > 256 || chunk_size > bytestream2_get_bytes_left(&s->gb)) {
            av_log(s->avctx, AV_LOG_ERROR, "problem: found a palette chunk with %d colors\n",
                chunk_size / 3);
            return AVERROR_INVALIDDATA;
        }
        for (i = 0; i < chunk_size / 3; i++) {

            r = bytestream2_get_byteu(&s->gb) * 4;
            g = bytestream2_get_byteu(&s->gb) * 4;
            b = bytestream2_get_byteu(&s->gb) * 4;
            s->palette[i] = 0xFFU << 24 | r << 16 | g << 8 | b;
            s->palette[i] |= s->palette[i] >> 6 & 0x30303;
        }
    }


    if ((cbf0_chunk != -1) && (cbfz_chunk != -1)) {


        av_log(s->avctx, AV_LOG_ERROR, "problem: found both CBF0 and CBFZ chunks\n");
        return AVERROR_INVALIDDATA;
    }


    if (cbfz_chunk != -1) {

        bytestream2_seek(&s->gb, cbfz_chunk, SEEK_SET);
        chunk_size = bytestream2_get_be32(&s->gb);
        if ((res = decode_format80(s, chunk_size, s->codebook,
                                   s->codebook_size, 0)) < 0)
            return res;
    }


    if (cbf0_chunk != -1) {

        bytestream2_seek(&s->gb, cbf0_chunk, SEEK_SET);
        chunk_size = bytestream2_get_be32(&s->gb);

        if (chunk_size > MAX_CODEBOOK_SIZE) {
            av_log(s->avctx, AV_LOG_ERROR, "problem: CBF0 chunk too large (0x%X bytes)\n",
                chunk_size);
            return AVERROR_INVALIDDATA;
        }

        bytestream2_get_buffer(&s->gb, s->codebook, chunk_size);
    }


    if (vptz_chunk == -1) {


        av_log(s->avctx, AV_LOG_ERROR, "problem: no VPTZ chunk found\n");
        return AVERROR_INVALIDDATA;
    }

    bytestream2_seek(&s->gb, vptz_chunk, SEEK_SET);
    chunk_size = bytestream2_get_be32(&s->gb);
    if ((res = decode_format80(s, chunk_size,
                               s->decode_buffer, s->decode_buffer_size, 1)) < 0)
        return res;


    if (s->vector_height == 4)
        index_shift = 4;
    else
        index_shift = 3;
    for (y = 0; y < s->height; y += s->vector_height) {
        for (x = 0; x < s->width; x += 4, lobytes++, hibytes++) {
            pixel_ptr = y * frame->linesize[0] + x;



            switch (s->vqa_version) {

            case 1:
                lobyte = s->decode_buffer[lobytes * 2];
                hibyte = s->decode_buffer[(lobytes * 2) + 1];
                vector_index = ((hibyte << 8) | lobyte) >> 3;
                vector_index <<= index_shift;
                lines = s->vector_height;

                if (hibyte == 0xFF) {
                    while (lines--) {
                        frame->data[0][pixel_ptr + 0] = 255 - lobyte;
                        frame->data[0][pixel_ptr + 1] = 255 - lobyte;
                        frame->data[0][pixel_ptr + 2] = 255 - lobyte;
                        frame->data[0][pixel_ptr + 3] = 255 - lobyte;
                        pixel_ptr += frame->linesize[0];
                    }
                    lines=0;
                }
                break;

            case 2:
                lobyte = s->decode_buffer[lobytes];
                hibyte = s->decode_buffer[hibytes];
                vector_index = (hibyte << 8) | lobyte;
                vector_index <<= index_shift;
                lines = s->vector_height;
                break;

            case 3:

                lines = 0;
                break;
            }

            while (lines--) {
                frame->data[0][pixel_ptr + 0] = s->codebook[vector_index++];
                frame->data[0][pixel_ptr + 1] = s->codebook[vector_index++];
                frame->data[0][pixel_ptr + 2] = s->codebook[vector_index++];
                frame->data[0][pixel_ptr + 3] = s->codebook[vector_index++];
                pixel_ptr += frame->linesize[0];
            }
        }
    }


    if ((cbp0_chunk != -1) && (cbpz_chunk != -1)) {

        av_log(s->avctx, AV_LOG_ERROR, "problem: found both CBP0 and CBPZ chunks\n");
        return AVERROR_INVALIDDATA;
    }

    if (cbp0_chunk != -1) {

        bytestream2_seek(&s->gb, cbp0_chunk, SEEK_SET);
        chunk_size = bytestream2_get_be32(&s->gb);

        if (chunk_size > MAX_CODEBOOK_SIZE - s->next_codebook_buffer_index) {
            av_log(s->avctx, AV_LOG_ERROR, "cbp0 chunk too large (%u bytes)\n",
                   chunk_size);
            return AVERROR_INVALIDDATA;
        }


        bytestream2_get_buffer(&s->gb, &s->next_codebook_buffer[s->next_codebook_buffer_index],
                               chunk_size);
        s->next_codebook_buffer_index += chunk_size;

        s->partial_countdown--;
        if (s->partial_countdown <= 0) {


            memcpy(s->codebook, s->next_codebook_buffer,
                s->next_codebook_buffer_index);


            s->next_codebook_buffer_index = 0;
            s->partial_countdown = s->partial_count;
        }
    }

    if (cbpz_chunk != -1) {

        bytestream2_seek(&s->gb, cbpz_chunk, SEEK_SET);
        chunk_size = bytestream2_get_be32(&s->gb);

        if (chunk_size > MAX_CODEBOOK_SIZE - s->next_codebook_buffer_index) {
            av_log(s->avctx, AV_LOG_ERROR, "cbpz chunk too large (%u bytes)\n",
                   chunk_size);
            return AVERROR_INVALIDDATA;
        }


        bytestream2_get_buffer(&s->gb, &s->next_codebook_buffer[s->next_codebook_buffer_index],
                               chunk_size);
        s->next_codebook_buffer_index += chunk_size;

        s->partial_countdown--;
        if (s->partial_countdown <= 0) {
            bytestream2_init(&s->gb, s->next_codebook_buffer, s->next_codebook_buffer_index);

            if ((res = decode_format80(s, s->next_codebook_buffer_index,
                                       s->codebook, s->codebook_size, 0)) < 0)
                return res;


            s->next_codebook_buffer_index = 0;
            s->partial_countdown = s->partial_count;
        }
    }

    return 0;
}
