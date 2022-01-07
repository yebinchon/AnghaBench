
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void multiply_matrix(float c[3][3], const float a[3][3], const float b[3][3])
{
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            float sum = 0;

            for (int k = 0; k < 3; k++)
                sum += a[i][k] * b[k][j];

            c[i][j] = sum;
        }
    }
}
