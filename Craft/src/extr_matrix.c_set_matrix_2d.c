
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mat_ortho (float*,int ,int,int ,int,int,int) ;

void set_matrix_2d(float *matrix, int width, int height) {
    mat_ortho(matrix, 0, width, 0, height, -1, 1);
}
