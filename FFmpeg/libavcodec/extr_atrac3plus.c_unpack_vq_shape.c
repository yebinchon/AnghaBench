
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;


 int* atrac3p_qu_num_to_seg ;

__attribute__((used)) static inline void unpack_vq_shape(int start_val, const int8_t *shape_vec,
                                   int *dst, int num_values)
{
    int i;

    if (num_values) {
        dst[0] = dst[1] = dst[2] = start_val;
        for (i = 3; i < num_values; i++)
            dst[i] = start_val - shape_vec[atrac3p_qu_num_to_seg[i] - 1];
    }
}
