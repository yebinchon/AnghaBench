
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;


 int hevc_idct_8x32_column_msa (int *,int,int) ;
 int hevc_idct_transpose_32x8_to_8x32 (int *,int *) ;
 int hevc_idct_transpose_8x32_to_32x8 (int *,int *) ;

__attribute__((used)) static void hevc_idct_32x32_msa(int16_t *coeffs)
{
    uint8_t row_cnt, col_cnt;
    int16_t *src = coeffs;
    int16_t tmp_buf[8 * 32 + 31];
    int16_t *tmp_buf_ptr = tmp_buf + 31;
    uint8_t round;
    uint8_t buf_pitch;


    tmp_buf_ptr = (int16_t *)(((uintptr_t) tmp_buf_ptr) & ~(uintptr_t) 63);


    round = 7;
    buf_pitch = 32;
    for (col_cnt = 0; col_cnt < 4; col_cnt++) {

        hevc_idct_8x32_column_msa((coeffs + col_cnt * 8), buf_pitch, round);
    }


    round = 12;
    buf_pitch = 8;
    for (row_cnt = 0; row_cnt < 4; row_cnt++) {

        src = (coeffs + 32 * 8 * row_cnt);

        hevc_idct_transpose_32x8_to_8x32(src, tmp_buf_ptr);
        hevc_idct_8x32_column_msa(tmp_buf_ptr, buf_pitch, round);
        hevc_idct_transpose_8x32_to_32x8(tmp_buf_ptr, src);
    }
}
