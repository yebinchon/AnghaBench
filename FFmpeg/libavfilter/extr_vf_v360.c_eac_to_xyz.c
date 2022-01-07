
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int V360Context ;





 float M_PI_2 ;



 int av_assert0 (int ) ;
 int floorf (float) ;
 float fmodf (float,float) ;
 int normalize_vector (float*) ;
 float tanf (float) ;

__attribute__((used)) static void eac_to_xyz(const V360Context *s,
                       int i, int j, int width, int height,
                       float *vec)
{
    const float pixel_pad = 2;
    const float u_pad = pixel_pad / width;
    const float v_pad = pixel_pad / height;

    int u_face, v_face, face;

    float l_x, l_y, l_z;

    float uf = (i + 0.5f) / width;
    float vf = (j + 0.5f) / height;






    uf = 3.f * (uf - u_pad) / (1.f - 2.f * u_pad);
    if (uf < 0.f) {
        u_face = 0;
        uf -= 0.5f;
    } else if (uf >= 3.f) {
        u_face = 2;
        uf -= 2.5f;
    } else {
        u_face = floorf(uf);
        uf = fmodf(uf, 1.f) - 0.5f;
    }


    v_face = floorf(vf * 2.f);
    vf = (vf - v_pad - 0.5f * v_face) / (0.5f - 2.f * v_pad) - 0.5f;

    if (uf >= -0.5f && uf < 0.5f) {
        uf = tanf(M_PI_2 * uf);
    } else {
        uf = 2.f * uf;
    }
    if (vf >= -0.5f && vf < 0.5f) {
        vf = tanf(M_PI_2 * vf);
    } else {
        vf = 2.f * vf;
    }

    face = u_face + 3 * v_face;

    switch (face) {
    case 130:
        l_x = -1.f;
        l_y = -vf;
        l_z = -uf;
        break;
    case 129:
        l_x = uf;
        l_y = -vf;
        l_z = -1.f;
        break;
    case 128:
        l_x = 1.f;
        l_y = -vf;
        l_z = uf;
        break;
    case 133:
        l_x = -vf;
        l_y = -1.f;
        l_z = uf;
        break;
    case 132:
        l_x = -vf;
        l_y = uf;
        l_z = 1.f;
        break;
    case 131:
        l_x = -vf;
        l_y = 1.f;
        l_z = -uf;
        break;
    default:
        av_assert0(0);
    }

    vec[0] = l_x;
    vec[1] = l_y;
    vec[2] = l_z;

    normalize_vector(vec);
}
