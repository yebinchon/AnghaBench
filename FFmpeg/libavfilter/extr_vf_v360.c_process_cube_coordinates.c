
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* in_cubemap_face_order; int * in_cubemap_face_rotation; } ;
typedef TYPE_1__ V360Context ;
 int av_assert0 (int ) ;
 int rotate_cube_face (float*,float*,int ) ;
 int rotate_cube_face_inverse (float*,float*,int ) ;

__attribute__((used)) static void process_cube_coordinates(const V360Context *s,
                                     float uf, float vf, int direction,
                                     float *new_uf, float *new_vf, int *face)
{
    *face = s->in_cubemap_face_order[direction];
    rotate_cube_face_inverse(&uf, &vf, s->in_cubemap_face_rotation[*face]);

    if ((uf < -1.f || uf >= 1.f) && (vf < -1.f || vf >= 1.f)) {

        *new_uf = uf;
        *new_vf = vf;
    } else if (uf < -1.f) {
        uf += 2.f;
        switch (direction) {
        case 129:
            direction = 131;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 130:
            direction = 133;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 128:
            direction = 130;
            *new_uf = vf;
            *new_vf = -uf;
            break;
        case 132:
            direction = 130;
            *new_uf = -vf;
            *new_vf = uf;
            break;
        case 131:
            direction = 130;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 133:
            direction = 129;
            *new_uf = uf;
            *new_vf = vf;
            break;
        default:
            av_assert0(0);
        }
    } else if (uf >= 1.f) {
        uf -= 2.f;
        switch (direction) {
        case 129:
            direction = 133;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 130:
            direction = 131;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 128:
            direction = 129;
            *new_uf = -vf;
            *new_vf = uf;
            break;
        case 132:
            direction = 129;
            *new_uf = vf;
            *new_vf = -uf;
            break;
        case 131:
            direction = 129;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 133:
            direction = 130;
            *new_uf = uf;
            *new_vf = vf;
            break;
        default:
            av_assert0(0);
        }
    } else if (vf < -1.f) {
        vf += 2.f;
        switch (direction) {
        case 129:
            direction = 128;
            *new_uf = vf;
            *new_vf = -uf;
            break;
        case 130:
            direction = 128;
            *new_uf = -vf;
            *new_vf = uf;
            break;
        case 128:
            direction = 133;
            *new_uf = -uf;
            *new_vf = -vf;
            break;
        case 132:
            direction = 131;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 131:
            direction = 128;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 133:
            direction = 128;
            *new_uf = -uf;
            *new_vf = -vf;
            break;
        default:
            av_assert0(0);
        }
    } else if (vf >= 1.f) {
        vf -= 2.f;
        switch (direction) {
        case 129:
            direction = 132;
            *new_uf = -vf;
            *new_vf = uf;
            break;
        case 130:
            direction = 132;
            *new_uf = vf;
            *new_vf = -uf;
            break;
        case 128:
            direction = 131;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 132:
            direction = 133;
            *new_uf = -uf;
            *new_vf = -vf;
            break;
        case 131:
            direction = 132;
            *new_uf = uf;
            *new_vf = vf;
            break;
        case 133:
            direction = 132;
            *new_uf = -uf;
            *new_vf = -vf;
            break;
        default:
            av_assert0(0);
        }
    } else {

        *new_uf = uf;
        *new_vf = vf;
    }

    *face = s->in_cubemap_face_order[direction];
    rotate_cube_face(new_uf, new_vf, s->in_cubemap_face_rotation[*face]);
}
