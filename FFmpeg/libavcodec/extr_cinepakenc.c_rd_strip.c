
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int v1_size; int v4_size; scalar_t__ mode; } ;
typedef TYPE_1__ strip_info ;
typedef scalar_t__ int64_t ;
struct TYPE_14__ {int max_extra_cb_iterations; scalar_t__ strip_buf; } ;
typedef scalar_t__ CinepakMode ;
typedef TYPE_2__ CinepakEncContext ;


 int CODEBOOK_MAX ;
 int ENC_UNCERTAIN ;
 int ENC_V1 ;
 int ENC_V4 ;
 scalar_t__ MODE_COUNT ;
 scalar_t__ MODE_MC ;
 scalar_t__ MODE_V1_ONLY ;
 scalar_t__ MODE_V1_V4 ;
 int SMALLEST_CODEBOOK ;
 scalar_t__ STRIP_HEADER_SIZE ;
 scalar_t__ calculate_mode_score (TYPE_2__*,int,TYPE_1__*,int,int*,int*) ;
 int calculate_skip_errors (TYPE_2__*,int,int **,int*,int **,int*,TYPE_1__*) ;
 int encode_mode (TYPE_2__*,int,int **,int*,int **,int*,TYPE_1__*,scalar_t__) ;
 int memcpy (unsigned char*,scalar_t__,int) ;
 void* quantize (TYPE_2__*,int,int **,int*,int,TYPE_1__*,int ) ;
 int write_strip_header (TYPE_2__*,int,int,int,scalar_t__,int) ;

__attribute__((used)) static int rd_strip(CinepakEncContext *s, int y, int h, int keyframe,
                    uint8_t *last_data[4], int last_linesize[4],
                    uint8_t *data[4], int linesize[4],
                    uint8_t *scratch_data[4], int scratch_linesize[4],
                    unsigned char *buf, int64_t *best_score)
{
    int64_t score = 0;
    int best_size = 0;
    strip_info info;

    int v1enough, v1_size, v4enough, v4_size;
    int new_v1_size, new_v4_size;
    int v1shrunk, v4shrunk;

    if (!keyframe)
        calculate_skip_errors(s, h, last_data, last_linesize, data, linesize,
                              &info);






    for (v1enough = 0, v1_size = 1; v1_size <= CODEBOOK_MAX && !v1enough; v1_size <<= 2) {
        for (v4enough = 0, v4_size = 0; v4_size <= v1_size && !v4enough; v4_size = v4_size ? v4_size << 2 : v1_size >= 1 << 2 ? v1_size >> 2 : 1) {
            CinepakMode mode;

            for (mode = 0; mode < MODE_COUNT; mode++) {

                if (keyframe && mode == MODE_MC)
                    continue;

                if (mode == MODE_V1_ONLY) {
                    info.v1_size = v1_size;

                    info.v1_size = quantize(s, h, data, linesize, 1,
                                            &info, ENC_UNCERTAIN);
                    if (info.v1_size < v1_size)

                        v1enough = 1;

                    info.v4_size = 0;
                } else {

                    if (!v4_size)
                        continue;

                    if (mode == MODE_V1_V4) {
                        info.v4_size = v4_size;
                        info.v4_size = quantize(s, h, data, linesize, 0,
                                                &info, ENC_UNCERTAIN);
                        if (info.v4_size < v4_size)

                            v4enough = 1;
                    }
                }

                info.mode = mode;

                score = calculate_mode_score(s, h, &info, 0,
                                             &v1shrunk, &v4shrunk);

                if (mode != MODE_V1_ONLY) {
                    int extra_iterations_limit = s->max_extra_cb_iterations;


                    info.v1_size = v1_size;
                    new_v1_size = quantize(s, h, data, linesize, 1, &info, ENC_V1);
                    if (new_v1_size < info.v1_size)
                        info.v1_size = new_v1_size;

                    info.v4_size = v4_size;
                    new_v4_size = quantize(s, h, data, linesize, 0, &info, ENC_V4);
                    if (new_v4_size < info.v4_size)
                        info.v4_size = new_v4_size;




                    for (;;) {
                        score = calculate_mode_score(s, h, &info, 1,
                                                     &v1shrunk, &v4shrunk);

                        if ((!v1shrunk && !v4shrunk) || !extra_iterations_limit--)
                            break;

                        if (v1shrunk) {
                            info.v1_size = v1_size;
                            new_v1_size = quantize(s, h, data, linesize, 1, &info, ENC_V1);
                            if (new_v1_size < info.v1_size)
                                info.v1_size = new_v1_size;
                        }
                        if (v4shrunk) {
                            info.v4_size = v4_size;
                            new_v4_size = quantize(s, h, data, linesize, 0, &info, ENC_V4);
                            if (new_v4_size < info.v4_size)
                                info.v4_size = new_v4_size;
                        }
                    }
                }

                if (best_size == 0 || score < *best_score) {
                    *best_score = score;
                    best_size = encode_mode(s, h,
                                            scratch_data, scratch_linesize,
                                            last_data, last_linesize, &info,
                                            s->strip_buf + STRIP_HEADER_SIZE);

                    write_strip_header(s, y, h, keyframe, s->strip_buf, best_size);
                }
            }
        }
    }

    best_size += STRIP_HEADER_SIZE;
    memcpy(buf, s->strip_buf, best_size);

    return best_size;
}
