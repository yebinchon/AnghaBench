
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_9__ {int huff_ncode; TYPE_1__* huff_buffer; int * huff_code_ac_chrominance; int * huff_code_ac_luminance; int * huff_code_dc_chrominance; int * huff_code_dc_luminance; scalar_t__* huff_size_ac_chrominance; scalar_t__* huff_size_ac_luminance; scalar_t__* huff_size_dc_chrominance; scalar_t__* huff_size_dc_luminance; } ;
struct TYPE_8__ {void* i_tex_bits; int pb; void* header_bits; TYPE_3__* mjpeg_ctx; } ;
struct TYPE_7__ {int table_id; int code; int mant; } ;
typedef TYPE_2__ MpegEncContext ;
typedef TYPE_3__ MJpegContext ;


 int ff_mpv_reallocate_putbitbuffer (TYPE_2__*,size_t,size_t) ;
 void* get_bits_diff (TYPE_2__*) ;
 int put_bits (int *,scalar_t__,int ) ;
 int put_sbits (int *,int,int ) ;

void ff_mjpeg_encode_picture_frame(MpegEncContext *s)
{
    int i, nbits, code, table_id;
    MJpegContext *m = s->mjpeg_ctx;
    uint8_t *huff_size[4] = {m->huff_size_dc_luminance,
                             m->huff_size_dc_chrominance,
                             m->huff_size_ac_luminance,
                             m->huff_size_ac_chrominance};
    uint16_t *huff_code[4] = {m->huff_code_dc_luminance,
                              m->huff_code_dc_chrominance,
                              m->huff_code_ac_luminance,
                              m->huff_code_ac_chrominance};
    size_t total_bits = 0;
    size_t bytes_needed;

    s->header_bits = get_bits_diff(s);

    for (i = 0; i < m->huff_ncode; i++) {
        table_id = m->huff_buffer[i].table_id;
        code = m->huff_buffer[i].code;
        nbits = code & 0xf;

        total_bits += huff_size[table_id][code] + nbits;
    }

    bytes_needed = (total_bits + 7) / 8;
    ff_mpv_reallocate_putbitbuffer(s, bytes_needed, bytes_needed);

    for (i = 0; i < m->huff_ncode; i++) {
        table_id = m->huff_buffer[i].table_id;
        code = m->huff_buffer[i].code;
        nbits = code & 0xf;

        put_bits(&s->pb, huff_size[table_id][code], huff_code[table_id][code]);
        if (nbits != 0) {
            put_sbits(&s->pb, nbits, m->huff_buffer[i].mant);
        }
    }

    m->huff_ncode = 0;
    s->i_tex_bits = get_bits_diff(s);
}
