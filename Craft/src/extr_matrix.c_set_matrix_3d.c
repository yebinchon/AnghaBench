
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cosf (float) ;
 int mat_identity (float*) ;
 int mat_multiply (float*,float*,float*) ;
 int mat_ortho (float*,int,int,int,int,float,float) ;
 int mat_perspective (float*,float,float,float,float) ;
 int mat_rotate (float*,int ,int,int ,float) ;
 int mat_translate (float*,float,float,float) ;
 int sinf (float) ;

void set_matrix_3d(
    float *matrix, int width, int height,
    float x, float y, float z, float rx, float ry,
    float fov, int ortho, int radius)
{
    float a[16];
    float b[16];
    float aspect = (float)width / height;
    float znear = 0.125;
    float zfar = radius * 32 + 64;
    mat_identity(a);
    mat_translate(b, -x, -y, -z);
    mat_multiply(a, b, a);
    mat_rotate(b, cosf(rx), 0, sinf(rx), ry);
    mat_multiply(a, b, a);
    mat_rotate(b, 0, 1, 0, -rx);
    mat_multiply(a, b, a);
    if (ortho) {
        int size = ortho;
        mat_ortho(b, -size * aspect, size * aspect, -size, size, -zfar, zfar);
    }
    else {
        mat_perspective(b, fov, aspect, znear, zfar);
    }
    mat_multiply(a, b, a);
    mat_identity(matrix);
    mat_multiply(matrix, a, matrix);
}
