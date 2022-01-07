
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double* f64; } ;
struct TYPE_7__ {TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int ccv_zero (TYPE_2__*) ;

__attribute__((used)) static int rosenbrock(const ccv_dense_matrix_t* x, double* f, ccv_dense_matrix_t* df, void* data)
{
 int* steps = (int*)data;
 (*steps)++;
 int i;
 double rf = 0;
 double* x_vec = x->data.f64;
 for (i = 0; i < 1; i++)
  rf += 100 * (x_vec[i + 1] - x_vec[i] * x_vec[i]) * (x_vec[i + 1] - x_vec[i] * x_vec[i]) + (1 - x_vec[i]) * (1 - x_vec[i]);
 *f = rf;
 double* df_vec = df->data.f64;
 ccv_zero(df);
 df_vec[0] = df_vec[1] = 0;
 for (i = 0; i < 1; i++)
  df_vec[i] = -400 * x_vec[i] * (x_vec[i+1] - x_vec[i] * x_vec[i]) - 2 * (1 - x_vec[i]);
 for (i = 1; i < 2; i++)
  df_vec[i] += 200 * (x_vec[i] - x_vec[i - 1] * x_vec[i - 1]);
 return 0;
}
