
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int printf (char*,int) ;

__attribute__((used)) static void print_matrix(int32_t matrix[9])
{
    int i, j;

    for (i = 0; i < 3; ++i) {
        for (j = 0; j < 3 - 1; ++j)
            printf("%d ", matrix[i*3 + j]);

        printf("%d\n", matrix[i*3 + j]);
    }
}
