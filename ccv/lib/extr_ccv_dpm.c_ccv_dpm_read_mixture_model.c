
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int* f32; unsigned char* u8; } ;
struct TYPE_14__ {TYPE_3__* w; } ;
struct TYPE_15__ {int count; int rows; int cols; int type; struct TYPE_15__* w; struct TYPE_15__* part; TYPE_1__ data; TYPE_2__ root; int counterpart; int * alpha; int dyy; int dxx; int dy; int dx; int z; int y; int x; int beta; } ;
typedef TYPE_3__ ccv_dpm_root_classifier_t ;
typedef TYPE_3__ ccv_dpm_part_classifier_t ;
struct TYPE_16__ {int count; TYPE_3__* root; } ;
typedef TYPE_5__ ccv_dpm_mixture_model_t ;
typedef TYPE_3__ ccv_dense_matrix_t ;
typedef int FILE ;


 int CCV_32F ;
 int assert (int) ;
 int ccfree (TYPE_3__*) ;
 scalar_t__ ccmalloc (size_t) ;
 int ccv_compute_dense_matrix_size (int,int,int) ;
 void* ccv_dense_matrix_new (int,int,int,scalar_t__,int ) ;
 int ccv_make_matrix_immutable (TYPE_3__*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fscanf (int *,char*,...) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int ,int) ;

ccv_dpm_mixture_model_t* ccv_dpm_read_mixture_model(const char* directory)
{
 FILE* r = fopen(directory, "r");
 if (r == 0)
  return 0;
 int count;
 char flag;
 fscanf(r, "%c", &flag);
 assert(flag == '.');
 fscanf(r, "%d", &count);
 ccv_dpm_root_classifier_t* root_classifier = (ccv_dpm_root_classifier_t*)ccmalloc(sizeof(ccv_dpm_root_classifier_t) * count);
 memset(root_classifier, 0, sizeof(ccv_dpm_root_classifier_t) * count);
 int i, j, k;
 size_t size = sizeof(ccv_dpm_mixture_model_t) + sizeof(ccv_dpm_root_classifier_t) * count;

 for (i = 0; i < count; i++)
 {
  int rows, cols;
  fscanf(r, "%d %d", &rows, &cols);
  fscanf(r, "%f %f %f %f", &root_classifier[i].beta, &root_classifier[i].alpha[0], &root_classifier[i].alpha[1], &root_classifier[i].alpha[2]);
  root_classifier[i].root.w = ccv_dense_matrix_new(rows, cols, CCV_32F | 31, ccmalloc(ccv_compute_dense_matrix_size(rows, cols, CCV_32F | 31)), 0);
  size += ccv_compute_dense_matrix_size(rows, cols, CCV_32F | 31);
  for (j = 0; j < rows * cols * 31; j++)
   fscanf(r, "%f", &root_classifier[i].root.w->data.f32[j]);
  ccv_make_matrix_immutable(root_classifier[i].root.w);
  fscanf(r, "%d", &root_classifier[i].count);
  ccv_dpm_part_classifier_t* part_classifier = (ccv_dpm_part_classifier_t*)ccmalloc(sizeof(ccv_dpm_part_classifier_t) * root_classifier[i].count);
  size += sizeof(ccv_dpm_part_classifier_t) * root_classifier[i].count;
  for (j = 0; j < root_classifier[i].count; j++)
  {
   fscanf(r, "%d %d %d", &part_classifier[j].x, &part_classifier[j].y, &part_classifier[j].z);
   fscanf(r, "%lf %lf %lf %lf", &part_classifier[j].dx, &part_classifier[j].dy, &part_classifier[j].dxx, &part_classifier[j].dyy);
   fscanf(r, "%f %f %f %f %f %f", &part_classifier[j].alpha[0], &part_classifier[j].alpha[1], &part_classifier[j].alpha[2], &part_classifier[j].alpha[3], &part_classifier[j].alpha[4], &part_classifier[j].alpha[5]);
   fscanf(r, "%d %d %d", &rows, &cols, &part_classifier[j].counterpart);
   part_classifier[j].w = ccv_dense_matrix_new(rows, cols, CCV_32F | 31, ccmalloc(ccv_compute_dense_matrix_size(rows, cols, CCV_32F | 31)), 0);
   size += ccv_compute_dense_matrix_size(rows, cols, CCV_32F | 31);
   for (k = 0; k < rows * cols * 31; k++)
    fscanf(r, "%f", &part_classifier[j].w->data.f32[k]);
   ccv_make_matrix_immutable(part_classifier[j].w);
  }
  root_classifier[i].part = part_classifier;
 }
 fclose(r);
 unsigned char* m = (unsigned char*)ccmalloc(size);
 ccv_dpm_mixture_model_t* model = (ccv_dpm_mixture_model_t*)m;
 m += sizeof(ccv_dpm_mixture_model_t);
 model->count = count;
 model->root = (ccv_dpm_root_classifier_t*)m;
 m += sizeof(ccv_dpm_root_classifier_t) * model->count;
 memcpy(model->root, root_classifier, sizeof(ccv_dpm_root_classifier_t) * model->count);
 ccfree(root_classifier);
 for (i = 0; i < model->count; i++)
 {
  ccv_dpm_part_classifier_t* part_classifier = model->root[i].part;
  model->root[i].part = (ccv_dpm_part_classifier_t*)m;
  m += sizeof(ccv_dpm_part_classifier_t) * model->root[i].count;
  memcpy(model->root[i].part, part_classifier, sizeof(ccv_dpm_part_classifier_t) * model->root[i].count);
  ccfree(part_classifier);
 }
 for (i = 0; i < model->count; i++)
 {
  ccv_dense_matrix_t* w = model->root[i].root.w;
  model->root[i].root.w = (ccv_dense_matrix_t*)m;
  m += ccv_compute_dense_matrix_size(w->rows, w->cols, w->type);
  memcpy(model->root[i].root.w, w, ccv_compute_dense_matrix_size(w->rows, w->cols, w->type));
  model->root[i].root.w->data.u8 = (unsigned char*)(model->root[i].root.w + 1);
  ccfree(w);
  for (j = 0; j < model->root[i].count; j++)
  {
   w = model->root[i].part[j].w;
   model->root[i].part[j].w = (ccv_dense_matrix_t*)m;
   m += ccv_compute_dense_matrix_size(w->rows, w->cols, w->type);
   memcpy(model->root[i].part[j].w, w, ccv_compute_dense_matrix_size(w->rows, w->cols, w->type));
   model->root[i].part[j].w->data.u8 = (unsigned char*)(model->root[i].part[j].w + 1);
   ccfree(w);
  }
 }
 return model;
}
