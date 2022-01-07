
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void MultiplyMatrix(double in1, double in2, double in3, double *out1, double *out2, double *out3, double const matrix[3][3])
{
 *out1 = matrix[0][0] * in1 + matrix[0][1] * in2 + matrix[0][2] * in3;
 *out2 = matrix[1][0] * in1 + matrix[1][1] * in2 + matrix[1][2] * in3;
 *out3 = matrix[2][0] * in1 + matrix[2][1] * in2 + matrix[2][2] * in3;
}
