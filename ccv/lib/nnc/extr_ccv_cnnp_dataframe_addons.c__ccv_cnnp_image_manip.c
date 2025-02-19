
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sfmt_t ;
typedef int ccv_matrix_t ;
struct TYPE_11__ {int type; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;
struct TYPE_12__ {int lighting; int contrast; int saturation; int brightness; } ;
typedef TYPE_2__ ccv_cnnp_random_jitter_t ;


 scalar_t__ CCV_C3 ;
 scalar_t__ CCV_GET_CHANNEL (int ) ;
 int _ccv_cnnp_image_lighting (TYPE_1__*,int,int,int) ;
 int _ccv_cnnp_random_logexp (int * const,int ) ;
 int assert (int ) ;
 int ccv_contrast (TYPE_1__*,TYPE_1__**,int ,int ) ;
 int ccv_saturation (TYPE_1__*,TYPE_1__**,int ,int ) ;
 int ccv_scale (TYPE_1__*,int **,int ,int ) ;
 int sfmt_genrand_real1 (int * const) ;
 int sfmt_genrand_shuffle (int * const,int*,int,int) ;

__attribute__((used)) static void _ccv_cnnp_image_manip(ccv_dense_matrix_t* image, const ccv_cnnp_random_jitter_t random_jitter, sfmt_t* const sfmt)
{
 assert(sfmt && CCV_GET_CHANNEL(image->type) == CCV_C3);
 int idx[4] = {0, 1, 2, 3};
 sfmt_genrand_shuffle(sfmt, idx, 4, sizeof(int));
 int i;
 for (i = 0; i < 4; i++)

  switch (idx[i])
  {
   case 0:
    if (random_jitter.brightness == 0)
     break;

    ccv_scale(image, (ccv_matrix_t**)&image, 0, _ccv_cnnp_random_logexp(sfmt, random_jitter.brightness));
    break;
   case 1:

    if (random_jitter.saturation == 0)
     break;
    ccv_saturation(image, &image, 0, _ccv_cnnp_random_logexp(sfmt, random_jitter.saturation));
    break;
   case 2:

    if (random_jitter.contrast == 0)
     break;
    ccv_contrast(image, &image, 0, _ccv_cnnp_random_logexp(sfmt, random_jitter.contrast));
    break;
   case 3:
    if (random_jitter.lighting == 0)
     break;
    _ccv_cnnp_image_lighting(image, sfmt_genrand_real1(sfmt) * random_jitter.lighting, sfmt_genrand_real1(sfmt) * random_jitter.lighting, sfmt_genrand_real1(sfmt) * random_jitter.lighting);
    break;
  }
}
