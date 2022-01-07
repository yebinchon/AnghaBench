
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {scalar_t__ x2; scalar_t__ y2; scalar_t__ x1; scalar_t__ y1; int v1_codebook; int v4_codebook; } ;
typedef TYPE_1__ cvid_strip ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_2__ CinepakContext ;


 int AVERROR_INVALIDDATA ;
 int AV_RB24 (int const*) ;
 int cinepak_decode_codebook (int ,int,int,int const*) ;
 int cinepak_decode_vectors (TYPE_2__*,TYPE_1__*,int,int,int const*) ;

__attribute__((used)) static int cinepak_decode_strip (CinepakContext *s,
                                 cvid_strip *strip, const uint8_t *data, int size)
{
    const uint8_t *eod = (data + size);
    int chunk_id, chunk_size;


    if (strip->x2 > s->width ||
        strip->y2 > s->height ||
        strip->x1 >= strip->x2 || strip->y1 >= strip->y2)
        return AVERROR_INVALIDDATA;

    while ((data + 4) <= eod) {
        chunk_id = data[0];
        chunk_size = AV_RB24 (&data[1]) - 4;
        if(chunk_size < 0)
            return AVERROR_INVALIDDATA;

        data += 4;
        chunk_size = ((data + chunk_size) > eod) ? (eod - data) : chunk_size;

        switch (chunk_id) {

        case 0x20:
        case 0x21:
        case 0x24:
        case 0x25:
            cinepak_decode_codebook (strip->v4_codebook, chunk_id,
                chunk_size, data);
            break;

        case 0x22:
        case 0x23:
        case 0x26:
        case 0x27:
            cinepak_decode_codebook (strip->v1_codebook, chunk_id,
                chunk_size, data);
            break;

        case 0x30:
        case 0x31:
        case 0x32:
            return cinepak_decode_vectors (s, strip, chunk_id,
                chunk_size, data);
        }

        data += chunk_size;
    }

    return AVERROR_INVALIDDATA;
}
