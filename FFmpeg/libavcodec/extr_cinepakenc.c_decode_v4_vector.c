
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * v4_codebook; } ;
typedef TYPE_1__ strip_info ;
struct TYPE_6__ {scalar_t__ pix_fmt; } ;
typedef TYPE_2__ CinepakEncContext ;


 scalar_t__ AV_PIX_FMT_RGB24 ;

__attribute__((used)) static void decode_v4_vector(CinepakEncContext *s, uint8_t *data[4],
                             int linesize[4], int *v4_vector, strip_info *info)
{
    int i, x, y, entry_size = s->pix_fmt == AV_PIX_FMT_RGB24 ? 6 : 4;

    for (i = y = 0; y < 4; y += 2) {
        for (x = 0; x < 4; x += 2, i++) {
            data[0][x + y * linesize[0]] = info->v4_codebook[v4_vector[i] * entry_size];
            data[0][x + 1 + y * linesize[0]] = info->v4_codebook[v4_vector[i] * entry_size + 1];
            data[0][x + (y + 1) * linesize[0]] = info->v4_codebook[v4_vector[i] * entry_size + 2];
            data[0][x + 1 + (y + 1) * linesize[0]] = info->v4_codebook[v4_vector[i] * entry_size + 3];

            if (s->pix_fmt == AV_PIX_FMT_RGB24) {
                data[1][(x >> 1) + (y >> 1) * linesize[1]] = info->v4_codebook[v4_vector[i] * entry_size + 4];
                data[2][(x >> 1) + (y >> 1) * linesize[2]] = info->v4_codebook[v4_vector[i] * entry_size + 5];
            }
        }
    }
}
