
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float sqrtf (float) ;

__attribute__((used)) static void normalize_vector(float *vec)
{
    const float norm = sqrtf(vec[0] * vec[0] + vec[1] * vec[1] + vec[2] * vec[2]);

    vec[0] /= norm;
    vec[1] /= norm;
    vec[2] /= norm;
}
