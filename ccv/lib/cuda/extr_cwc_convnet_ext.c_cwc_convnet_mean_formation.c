
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


struct TYPE_23__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_3__ ccv_size_t ;
typedef int ccv_matrix_t ;
struct TYPE_22__ {double* f64; float* f32; } ;
struct TYPE_24__ {scalar_t__ cols; scalar_t__ rows; TYPE_2__ data; } ;
typedef TYPE_4__ ccv_dense_matrix_t ;
struct TYPE_21__ {int filename; } ;
struct TYPE_25__ {int type; TYPE_1__ file; TYPE_4__* matrix; } ;
typedef TYPE_5__ ccv_categorized_t ;
struct TYPE_26__ {int rnum; } ;
typedef TYPE_6__ ccv_array_t ;


 int CCV_32F ;
 int CCV_64F ;


 int CCV_CLI_ERROR ;
 int CCV_CLI_INFO ;
 int CCV_IO_ANY_FILE ;
 int CCV_IO_RGB_COLOR ;
 int FLUSH (int ,char*,int,int) ;
 int PRINT (int ,char*,...) ;
 int assert (int) ;
 int ccv_add (TYPE_4__*,TYPE_4__*,int **,int) ;
 scalar_t__ ccv_array_get (TYPE_6__*,int) ;
 TYPE_4__* ccv_dense_matrix_new (scalar_t__,scalar_t__,int,int ,int ) ;
 TYPE_4__* ccv_dense_matrix_renew (TYPE_4__*,scalar_t__,scalar_t__,int,int,int ) ;
 int ccv_matrix_free (TYPE_4__*) ;
 int ccv_read (int ,TYPE_4__**,int) ;
 int ccv_shift (TYPE_4__*,int **,int,int ,int ) ;
 int ccv_slice (TYPE_4__*,int **,int,int,int,int,int) ;
 int ccv_zero (TYPE_4__*) ;

void cwc_convnet_mean_formation(ccv_array_t* categorizeds, ccv_size_t dim, int channels, int symmetric, ccv_dense_matrix_t** b)
{
 int i, count = 0;
 ccv_dense_matrix_t* c = ccv_dense_matrix_new(dim.height, dim.width, channels | CCV_64F, 0, 0);
 ccv_zero(c);
 ccv_dense_matrix_t* db = *b = ccv_dense_matrix_renew(*b, dim.height, dim.width, channels | CCV_32F, channels | CCV_32F, 0);
 for (i = 0; i < categorizeds->rnum; i++)
 {
  if (i % 23 == 0 || i == categorizeds->rnum - 1)
   FLUSH(CCV_CLI_INFO, " - compute mean activity %d / %d", i + 1, categorizeds->rnum);
  ccv_categorized_t* categorized = (ccv_categorized_t*)ccv_array_get(categorizeds, i);
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
  ccv_add(patch, c, (ccv_matrix_t**)&c, CCV_64F);
  ++count;
  ccv_matrix_free(patch);
 }
 if (symmetric)
 {
  int j, k;
  double p = 0.5 / count;
  double* cptr = c->data.f64;
  float* dbptr = db->data.f32;
  for (i = 0; i < db->rows; i++)
  {
   for (j = 0; j < db->cols; j++)
    for (k = 0; k < channels; k++)
     dbptr[j * channels + k] = p * (cptr[j * channels + k] + cptr[(c->cols - j - 1) * channels + k]);
   dbptr += db->cols * channels;
   cptr += c->cols * channels;
  }
 } else {
  double p = 1.0 / count;
  for (i = 0; i < dim.height * dim.width * channels; i++)
   db->data.f32[i] = p * c->data.f64[i];
 }
 ccv_matrix_free(c);
 PRINT(CCV_CLI_INFO, "\n");
}
