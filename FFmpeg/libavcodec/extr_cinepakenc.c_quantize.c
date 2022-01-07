
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int* v1_codebook; int* v4_codebook; int v1_size; int v4_size; } ;
typedef TYPE_1__ strip_info ;
struct TYPE_13__ {scalar_t__ best_encoding; void* v4_error; int * v4_vector; void* v1_error; int v1_vector; } ;
typedef TYPE_2__ mb_info ;
typedef scalar_t__ mb_encoding ;
typedef int int64_t ;
struct TYPE_14__ {scalar_t__ pix_fmt; int w; int* codebook_input; int * codebook_closest; TYPE_2__* mb; int randctx; } ;
typedef TYPE_3__ CinepakEncContext ;


 scalar_t__ AV_PIX_FMT_RGB24 ;
 scalar_t__ CERTAIN (scalar_t__) ;
 int MB_AREA ;
 int MB_SIZE ;
 int av_assert0 (int) ;
 int avpriv_do_elbg (int*,int,int,int*,int,int,int *,int *) ;
 int avpriv_init_elbg (int*,int,int,int*,int,int,int *,int *) ;
 void* compute_mb_distortion (TYPE_3__*,int**,int*,int**,int*) ;
 int decode_v1_vector (TYPE_3__*,int**,int*,int ,TYPE_1__*) ;
 int decode_v4_vector (TYPE_3__*,int**,int*,int *,TYPE_1__*) ;
 int get_sub_picture (TYPE_3__*,int,int,int**,int*,int**,int*) ;

__attribute__((used)) static int quantize(CinepakEncContext *s, int h, uint8_t *data[4],
                    int linesize[4], int v1mode, strip_info *info,
                    mb_encoding encoding)
{
    int x, y, i, j, k, x2, y2, x3, y3, plane, shift, mbn;
    int entry_size = s->pix_fmt == AV_PIX_FMT_RGB24 ? 6 : 4;
    int *codebook = v1mode ? info->v1_codebook : info->v4_codebook;
    int size = v1mode ? info->v1_size : info->v4_size;
    int64_t total_error = 0;
    uint8_t vq_pict_buf[(MB_AREA * 3) / 2];
    uint8_t *sub_data[4], *vq_data[4];
    int sub_linesize[4], vq_linesize[4];

    for (mbn = i = y = 0; y < h; y += MB_SIZE) {
        for (x = 0; x < s->w; x += MB_SIZE, ++mbn) {
            int *base;

            if (CERTAIN(encoding)) {

                if (s->mb[mbn].best_encoding != encoding)
                    continue;
            }

            base = s->codebook_input + i * entry_size;
            if (v1mode) {

                for (j = y2 = 0; y2 < entry_size; y2 += 2)
                    for (x2 = 0; x2 < 4; x2 += 2, j++) {
                        plane = y2 < 4 ? 0 : 1 + (x2 >> 1);
                        shift = y2 < 4 ? 0 : 1;
                        x3 = shift ? 0 : x2;
                        y3 = shift ? 0 : y2;
                        base[j] = (data[plane][((x + x3) >> shift) + ((y + y3) >> shift) * linesize[plane]] +
                                   data[plane][((x + x3) >> shift) + 1 + ((y + y3) >> shift) * linesize[plane]] +
                                   data[plane][((x + x3) >> shift) + (((y + y3) >> shift) + 1) * linesize[plane]] +
                                   data[plane][((x + x3) >> shift) + 1 + (((y + y3) >> shift) + 1) * linesize[plane]]) >> 2;
                    }
            } else {

                for (j = y2 = 0; y2 < MB_SIZE; y2 += 2) {
                    for (x2 = 0; x2 < MB_SIZE; x2 += 2)
                        for (k = 0; k < entry_size; k++, j++) {
                            plane = k >= 4 ? k - 3 : 0;

                            if (k >= 4) {
                                x3 = (x + x2) >> 1;
                                y3 = (y + y2) >> 1;
                            } else {
                                x3 = x + x2 + (k & 1);
                                y3 = y + y2 + (k >> 1);
                            }

                            base[j] = data[plane][x3 + y3 * linesize[plane]];
                        }
                }
            }
            i += v1mode ? 1 : 4;
        }
    }

    if (i == 0)
        return 0;
    if (i < size)
        size = i;

    avpriv_init_elbg(s->codebook_input, entry_size, i, codebook, size, 1, s->codebook_closest, &s->randctx);
    avpriv_do_elbg(s->codebook_input, entry_size, i, codebook, size, 1, s->codebook_closest, &s->randctx);


    vq_data[0] = vq_pict_buf;
    vq_linesize[0] = MB_SIZE;
    vq_data[1] = &vq_pict_buf[MB_AREA];
    vq_data[2] = vq_data[1] + (MB_AREA >> 2);
    vq_linesize[1] =
    vq_linesize[2] = MB_SIZE >> 1;


    for (i = j = y = 0; y < h; y += MB_SIZE)
        for (x = 0; x < s->w; x += MB_SIZE, j++) {
            mb_info *mb = &s->mb[j];

            if (CERTAIN(encoding) && mb->best_encoding != encoding)
                continue;


            get_sub_picture(s, x, y, data, linesize, sub_data, sub_linesize);

            if (v1mode) {
                mb->v1_vector = s->codebook_closest[i];


                decode_v1_vector(s, vq_data, vq_linesize, mb->v1_vector, info);

                mb->v1_error = compute_mb_distortion(s, sub_data, sub_linesize,
                                                     vq_data, vq_linesize);
                total_error += mb->v1_error;
            } else {
                for (k = 0; k < 4; k++)
                    mb->v4_vector[k] = s->codebook_closest[i + k];


                decode_v4_vector(s, vq_data, vq_linesize, mb->v4_vector, info);

                mb->v4_error = compute_mb_distortion(s, sub_data, sub_linesize,
                                                     vq_data, vq_linesize);
                total_error += mb->v4_error;
            }
            i += v1mode ? 1 : 4;
        }

    av_assert0(i >= size);

    return size;
}
