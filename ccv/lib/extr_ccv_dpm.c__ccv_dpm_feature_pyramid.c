
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {double rows; double cols; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;


 int CCV_DPM_WINDOW_SIZE ;
 int CCV_INTER_AREA ;
 int ccv_hog (TYPE_1__*,TYPE_1__**,int ,int,int) ;
 int ccv_matrix_free (TYPE_1__*) ;
 int ccv_resample (TYPE_1__*,TYPE_1__**,int ,int,int,int ) ;
 int ccv_sample_down (TYPE_1__*,TYPE_1__**,int ,int ,int ) ;
 int memset (TYPE_1__**,int ,int) ;
 double pow (double,int) ;

__attribute__((used)) static void _ccv_dpm_feature_pyramid(ccv_dense_matrix_t* a, ccv_dense_matrix_t** pyr, int scale_upto, int interval)
{
 int next = interval + 1;
 double scale = pow(2.0, 1.0 / (interval + 1.0));
 memset(pyr, 0, (scale_upto + next * 2) * sizeof(ccv_dense_matrix_t*));
 pyr[next] = a;
 int i;
 for (i = 1; i <= interval; i++)
  ccv_resample(pyr[next], &pyr[next + i], 0, (int)(pyr[next]->rows / pow(scale, i)), (int)(pyr[next]->cols / pow(scale, i)), CCV_INTER_AREA);
 for (i = next; i < scale_upto + next; i++)
  ccv_sample_down(pyr[i], &pyr[i + next], 0, 0, 0);
 ccv_dense_matrix_t* hog;

 for (i = 0; i < next; i++)
 {
  hog = 0;
  ccv_hog(pyr[i + next], &hog, 0, 9, CCV_DPM_WINDOW_SIZE / 2 );
  pyr[i] = hog;
 }
 hog = 0;
 ccv_hog(pyr[next], &hog, 0, 9, CCV_DPM_WINDOW_SIZE);
 pyr[next] = hog;
 for (i = next + 1; i < scale_upto + next * 2; i++)
 {
  hog = 0;
  ccv_hog(pyr[i], &hog, 0, 9, CCV_DPM_WINDOW_SIZE);
  ccv_matrix_free(pyr[i]);
  pyr[i] = hog;
 }
}
