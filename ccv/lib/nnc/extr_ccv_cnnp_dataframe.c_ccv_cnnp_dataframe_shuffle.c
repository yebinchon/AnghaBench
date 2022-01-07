
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int row_count; int* shuffled_idx; int sfmt; scalar_t__ rng; } ;
typedef TYPE_1__ ccv_cnnp_dataframe_t ;


 int assert (int) ;
 scalar_t__ ccmalloc (int) ;
 int gsl_ran_shuffle (scalar_t__,int*,int,int) ;
 scalar_t__ gsl_rng_alloc (int ) ;
 int gsl_rng_default ;
 int gsl_rng_env_setup () ;
 int gsl_rng_set (scalar_t__,unsigned long) ;
 int sfmt_genrand_shuffle (int *,int*,int,int) ;
 int sfmt_init_gen_rand (int *,int ) ;

void ccv_cnnp_dataframe_shuffle(ccv_cnnp_dataframe_t* const dataframe)
{
 assert(dataframe->row_count);
 int i;
 if (!dataframe->shuffled_idx)
 {
  dataframe->shuffled_idx = (int*)ccmalloc(sizeof(int) * dataframe->row_count);
  for (i = 0; i < dataframe->row_count; i++)
   dataframe->shuffled_idx[i] = i;






  sfmt_init_gen_rand(&dataframe->sfmt, (uint32_t)dataframe);

 }



 sfmt_genrand_shuffle(&dataframe->sfmt, dataframe->shuffled_idx, dataframe->row_count, sizeof(int));

}
