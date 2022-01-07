
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PI ;
 int mat_identity (float*) ;
 int mat_multiply (float*,float*,float*) ;
 int mat_ortho (float*,float,float,float,float,int,int) ;
 int mat_rotate (float*,int,int,int ,int) ;
 int mat_translate (float*,float,float,int ) ;

void set_matrix_item(float *matrix, int width, int height, int scale) {
    float a[16];
    float b[16];
    float aspect = (float)width / height;
    float size = 64 * scale;
    float box = height / size / 2;
    float xoffset = 1 - size / width * 2;
    float yoffset = 1 - size / height * 2;
    mat_identity(a);
    mat_rotate(b, 0, 1, 0, -PI / 4);
    mat_multiply(a, b, a);
    mat_rotate(b, 1, 0, 0, -PI / 10);
    mat_multiply(a, b, a);
    mat_ortho(b, -box * aspect, box * aspect, -box, box, -1, 1);
    mat_multiply(a, b, a);
    mat_translate(b, -xoffset, -yoffset, 0);
    mat_multiply(a, b, a);
    mat_identity(matrix);
    mat_multiply(matrix, a, matrix);
}
