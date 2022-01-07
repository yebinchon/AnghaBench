
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int av_display_matrix_flip (int *,int,int) ;
 double av_display_rotation_get (int *) ;
 int av_display_rotation_set (int *,int) ;
 int print_matrix (int *) ;
 int printf (char*,double) ;

int main(void)
{
    int32_t matrix[9];


    av_display_rotation_set(matrix, 90);
    print_matrix(matrix);
    printf("degrees: %f\n", av_display_rotation_get(matrix));


    av_display_rotation_set(matrix, -45);
    print_matrix(matrix);
    printf("degrees: %f\n", av_display_rotation_get(matrix));


    av_display_matrix_flip(matrix, 1, 0);
    print_matrix(matrix);
    printf("degrees: %f\n", av_display_rotation_get(matrix));


    av_display_matrix_flip(matrix, 0, 1);
    print_matrix(matrix);
    printf("degrees: %f\n", av_display_rotation_get(matrix));

    return 0;

}
