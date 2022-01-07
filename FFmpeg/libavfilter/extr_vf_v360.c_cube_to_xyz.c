
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* out_cubemap_direction_order; int * out_cubemap_face_rotation; } ;
typedef TYPE_1__ V360Context ;
 int av_assert0 (int ) ;
 int normalize_vector (float*) ;
 int rotate_cube_face_inverse (float*,float*,int ) ;

__attribute__((used)) static void cube_to_xyz(const V360Context *s,
                        float uf, float vf, int face,
                        float *vec, float scalew, float scaleh)
{
    const int direction = s->out_cubemap_direction_order[face];
    float l_x, l_y, l_z;

    uf /= scalew;
    vf /= scaleh;

    rotate_cube_face_inverse(&uf, &vf, s->out_cubemap_face_rotation[face]);

    switch (direction) {
    case 129:
        l_x = 1.f;
        l_y = -vf;
        l_z = uf;
        break;
    case 130:
        l_x = -1.f;
        l_y = -vf;
        l_z = -uf;
        break;
    case 128:
        l_x = uf;
        l_y = 1.f;
        l_z = -vf;
        break;
    case 132:
        l_x = uf;
        l_y = -1.f;
        l_z = vf;
        break;
    case 131:
        l_x = uf;
        l_y = -vf;
        l_z = -1.f;
        break;
    case 133:
        l_x = -uf;
        l_y = -vf;
        l_z = 1.f;
        break;
    default:
        av_assert0(0);
    }

    vec[0] = l_x;
    vec[1] = l_y;
    vec[2] = l_z;

    normalize_vector(vec);
}
