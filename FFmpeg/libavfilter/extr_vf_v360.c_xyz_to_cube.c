
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* in_cubemap_face_order; float* input_mirror_modifier; int * in_cubemap_face_rotation; } ;
typedef TYPE_1__ V360Context ;






 float const M_PI ;
 float const M_PI_2 ;
 float const M_PI_4 ;


 float asinf (float const) ;
 float atan2f (float const,float const) ;
 float atanf (int ) ;
 int av_assert0 (int ) ;
 int cosf (float) ;
 int rotate_cube_face (float*,float*,int ) ;

__attribute__((used)) static void xyz_to_cube(const V360Context *s,
                        const float *vec,
                        float *uf, float *vf, int *direction)
{
    const float phi = atan2f(vec[0], -vec[2]);
    const float theta = asinf(-vec[1]);
    float phi_norm, theta_threshold;
    int face;

    if (phi >= -M_PI_4 && phi < M_PI_4) {
        *direction = 131;
        phi_norm = phi;
    } else if (phi >= -(M_PI_2 + M_PI_4) && phi < -M_PI_4) {
        *direction = 130;
        phi_norm = phi + M_PI_2;
    } else if (phi >= M_PI_4 && phi < M_PI_2 + M_PI_4) {
        *direction = 129;
        phi_norm = phi - M_PI_2;
    } else {
        *direction = 133;
        phi_norm = phi + ((phi > 0.f) ? -M_PI : M_PI);
    }

    theta_threshold = atanf(cosf(phi_norm));
    if (theta > theta_threshold) {
        *direction = 132;
    } else if (theta < -theta_threshold) {
        *direction = 128;
    }

    switch (*direction) {
    case 129:
        *uf = vec[2] / vec[0];
        *vf = -vec[1] / vec[0];
        break;
    case 130:
        *uf = vec[2] / vec[0];
        *vf = vec[1] / vec[0];
        break;
    case 128:
        *uf = vec[0] / vec[1];
        *vf = -vec[2] / vec[1];
        break;
    case 132:
        *uf = -vec[0] / vec[1];
        *vf = -vec[2] / vec[1];
        break;
    case 131:
        *uf = -vec[0] / vec[2];
        *vf = vec[1] / vec[2];
        break;
    case 133:
        *uf = -vec[0] / vec[2];
        *vf = -vec[1] / vec[2];
        break;
    default:
        av_assert0(0);
    }

    face = s->in_cubemap_face_order[*direction];
    rotate_cube_face(uf, vf, s->in_cubemap_face_rotation[face]);

    (*uf) *= s->input_mirror_modifier[0];
    (*vf) *= s->input_mirror_modifier[1];
}
