
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int prev_line ;
struct TYPE_3__ {int esc_model; int * vq_model; int vec_entry_model; int vec_size_model; } ;
typedef int RangeCoder ;
typedef TYPE_1__ ImageBlockCoder ;


 int memset (int*,int ,int) ;
 void* rac_get_model256_sym (int *,int *) ;
 int rac_get_model_sym (int *,int *) ;

__attribute__((used)) static void decode_image_block(RangeCoder *c, ImageBlockCoder *ic,
                               uint8_t *dst, ptrdiff_t stride, int block_size)
{
    int i, j;
    int vec_size;
    int vec[4];
    int prev_line[16];
    int A, B, C;

    vec_size = rac_get_model_sym(c, &ic->vec_size_model) + 2;
    for (i = 0; i < vec_size; i++)
        vec[i] = rac_get_model256_sym(c, &ic->vec_entry_model);
    for (; i < 4; i++)
        vec[i] = 0;
    memset(prev_line, 0, sizeof(prev_line));

    for (j = 0; j < block_size; j++) {
        A = 0;
        B = 0;
        for (i = 0; i < block_size; i++) {
            C = B;
            B = prev_line[i];
            A = rac_get_model_sym(c, &ic->vq_model[A + B * 5 + C * 25]);

            prev_line[i] = A;
            if (A < 4)
               dst[i] = vec[A];
            else
               dst[i] = rac_get_model256_sym(c, &ic->esc_model);
        }
        dst += stride;
    }
}
