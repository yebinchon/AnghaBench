
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mat_vec_multiply (float*,float*,float*) ;

void mat_apply(float *data, float *matrix, int count, int offset, int stride) {
    float vec[4] = {0, 0, 0, 1};
    for (int i = 0; i < count; i++) {
        float *d = data + offset + stride * i;
        vec[0] = *(d++); vec[1] = *(d++); vec[2] = *(d++);
        mat_vec_multiply(vec, matrix, vec);
        d = data + offset + stride * i;
        *(d++) = vec[0]; *(d++) = vec[1]; *(d++) = vec[2];
    }
}
