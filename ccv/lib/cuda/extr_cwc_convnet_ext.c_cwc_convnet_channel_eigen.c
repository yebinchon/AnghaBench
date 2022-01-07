
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int height; int width; } ;
typedef TYPE_3__ ccv_size_t ;
typedef int ccv_matrix_t ;
struct TYPE_22__ {double* f32; } ;
struct TYPE_24__ {int rows; int cols; TYPE_2__ data; int type; } ;
typedef TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_21__ {int filename; } ;
struct TYPE_25__ {int type; TYPE_1__ file; TYPE_4__* matrix; } ;
typedef TYPE_5__ ccv_categorized_t ;
struct TYPE_26__ {int rnum; } ;
typedef TYPE_6__ ccv_array_t ;


 int CCV_32F ;
 int CCV_64F ;
 int CCV_C1 ;


 int CCV_CLI_ERROR ;
 int CCV_CLI_INFO ;
 int CCV_GET_CHANNEL (int ) ;
 int CCV_IO_ANY_FILE ;
 int CCV_IO_RGB_COLOR ;
 int FLUSH (int ,char*,int,int) ;
 int PRINT (int ,char*,...) ;
 scalar_t__ alloca (int) ;
 int assert (int) ;
 scalar_t__ ccv_array_get (TYPE_6__*,int) ;
 TYPE_4__ ccv_dense_matrix (int,int,int,double*,int ) ;
 int ccv_eigen (TYPE_4__*,TYPE_4__**,TYPE_4__**,int,int) ;
 int ccv_matrix_free (TYPE_4__*) ;
 int ccv_read (int ,TYPE_4__**,int) ;
 int ccv_shift (TYPE_4__*,int **,int ,int ,int ) ;
 int ccv_slice (TYPE_4__*,int **,int ,int,int,int,int) ;
 int memset (double*,int ,int) ;

void cwc_convnet_channel_eigen(ccv_array_t* categorizeds, ccv_dense_matrix_t* mean_activity, ccv_size_t dim, int channels, ccv_dense_matrix_t** eigenvectors, ccv_dense_matrix_t** eigenvalues)
{
 assert(channels == 3);
 double* mean_value = (double*)alloca(sizeof(double) * channels);
 memset(mean_value, 0, sizeof(double) * channels);
 assert(CCV_GET_CHANNEL(mean_activity->type) == channels);
 assert(mean_activity->rows == dim.height);
 assert(mean_activity->cols == dim.width);
 int i, j, k, c, count = 0;
 for (i = 0; i < dim.height * dim.width; i++)
  for (k = 0; k < channels; k++)
   mean_value[k] += mean_activity->data.f32[i * channels + k];
 for (i = 0; i < channels; i++)
  mean_value[i] = mean_value[i] / (dim.height * dim.width);
 double* covariance = (double*)alloca(sizeof(double) * channels * channels);
 memset(covariance, 0, sizeof(double) * channels * channels);
 for (c = 0; c < categorizeds->rnum; c++)
 {
  if (c % 23 == 0 || c == categorizeds->rnum - 1)
   FLUSH(CCV_CLI_INFO, " - compute covariance matrix for data augmentation (color gain) %d / %d", c + 1, categorizeds->rnum);
  ccv_categorized_t* categorized = (ccv_categorized_t*)ccv_array_get(categorizeds, c);
  ccv_dense_matrix_t* image = 0;
  switch (categorized->type)
  {
   case 129:
    image = categorized->matrix;
    break;
   case 128:
    ccv_read(categorized->file.filename, &image, CCV_IO_ANY_FILE | CCV_IO_RGB_COLOR);
    break;
  }
  if (!image)
  {
   PRINT(CCV_CLI_ERROR, "cannot load %s.\n", categorized->file.filename);
   continue;
  }
  ccv_dense_matrix_t* patch = 0;
  if (image->cols != dim.width || image->rows != dim.height)
  {
   int x = (image->cols - dim.width + 1) / 2;
   int y = (image->rows - dim.height + 1) / 2;
   assert(x == 0 || y == 0);
   ccv_slice(image, (ccv_matrix_t**)&patch, CCV_32F, y, x, dim.height, dim.width);
  } else
   ccv_shift(image, (ccv_matrix_t**)&patch, CCV_32F, 0, 0);
  if (categorized->type != 129)
   ccv_matrix_free(image);
  for (i = 0; i < dim.width * dim.height; i++)
   for (j = 0; j < channels; j++)
    for (k = j; k < channels; k++)
     covariance[j * channels + k] += (patch->data.f32[i * channels + j] - mean_value[j]) * (patch->data.f32[i * channels + k] - mean_value[k]);
  ++count;
  ccv_matrix_free(patch);
 }
 for (i = 0; i < channels; i++)
  for (j = 0; j < i; j++)
   covariance[i * channels + j] = covariance[j * channels + i];
 double p = 1.0 / ((double)count * dim.height * dim.width);
 for (i = 0; i < channels; i++)
  for (j = 0; j < channels; j++)
   covariance[i * channels + j] *= p;
 ccv_dense_matrix_t covm = ccv_dense_matrix(3, 3, CCV_64F | CCV_C1, covariance, 0);
 ccv_eigen(&covm, eigenvectors, eigenvalues, CCV_64F, 1e-8);
 PRINT(CCV_CLI_INFO, "\n");
}
