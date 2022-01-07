
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_assert0 (int ) ;

__attribute__((used)) static inline void rotate_cube_face_inverse(float *uf, float *vf, int rotation)
{
    float tmp;

    switch (rotation) {
    case 131:
        break;
    case 128:
        tmp = -*uf;
        *uf = *vf;
        *vf = tmp;
        break;
    case 130:
        *uf = -*uf;
        *vf = -*vf;
        break;
    case 129:
        tmp = *uf;
        *uf = -*vf;
        *vf = tmp;
        break;
    default:
        av_assert0(0);
    }
}
