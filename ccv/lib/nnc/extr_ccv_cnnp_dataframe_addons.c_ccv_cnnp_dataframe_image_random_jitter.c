
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int* std; } ;
struct TYPE_7__ {TYPE_1__ normalize; scalar_t__ seed; } ;
typedef TYPE_2__ ccv_cnnp_random_jitter_t ;
struct TYPE_8__ {int datatype; TYPE_2__ random_jitter; int sfmt; } ;
typedef TYPE_3__ ccv_cnnp_random_jitter_context_t ;
typedef int ccv_cnnp_dataframe_t ;
typedef int ccv_cnnp_column_data_context_deinit_f ;


 int const CCV_32F ;
 int COLUMN_ID_LIST (int const) ;
 int _ccv_cnnp_image_deinit ;
 int _ccv_cnnp_random_jitter ;
 int assert (int) ;
 scalar_t__ ccfree ;
 scalar_t__ ccmalloc (int) ;
 int ccv_cnnp_dataframe_map (int * const,int ,int ,int ,int ,TYPE_3__* const,int ) ;
 int sfmt_init_gen_rand (int *,int ) ;

int ccv_cnnp_dataframe_image_random_jitter(ccv_cnnp_dataframe_t* const dataframe, const int column_idx, const int datatype, const ccv_cnnp_random_jitter_t random_jitter)
{
 assert(datatype == CCV_32F);
 ccv_cnnp_random_jitter_context_t* const random_jitter_context = (ccv_cnnp_random_jitter_context_t*)ccmalloc(sizeof(ccv_cnnp_random_jitter_context_t));
 if (random_jitter.seed)
  sfmt_init_gen_rand(&random_jitter_context->sfmt, (uint32_t)random_jitter.seed);
 else
  sfmt_init_gen_rand(&random_jitter_context->sfmt, (uint32_t)(uintptr_t)dataframe);
 random_jitter_context->datatype = datatype;
 random_jitter_context->random_jitter = random_jitter;
 int i;

 for (i = 0; i < 3; i++)
  random_jitter_context->random_jitter.normalize.std[i] = random_jitter_context->random_jitter.normalize.std[i] ? 1. / random_jitter_context->random_jitter.normalize.std[i] : 1;
 return ccv_cnnp_dataframe_map(dataframe, _ccv_cnnp_random_jitter, 0, _ccv_cnnp_image_deinit, COLUMN_ID_LIST(column_idx), random_jitter_context, (ccv_cnnp_column_data_context_deinit_f)ccfree);
}
