
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int dsfmt_t ;
struct TYPE_9__ {scalar_t__ dsfmt; } ;
typedef TYPE_1__ ccv_tld_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_10__ {int rect; } ;
typedef TYPE_2__ ccv_comp_t ;
struct TYPE_11__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;


 double _ccv_tld_box_variance (int *,int *,int ) ;
 int _ccv_tld_fetch_patch (TYPE_1__*,int *,int **,int ,int ) ;
 float _ccv_tld_sv_classify (TYPE_1__*,int *,int ,int ,int ,int ) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;
 int ccv_matrix_free (int *) ;
 double dsfmt_genrand_close_open (int *) ;

__attribute__((used)) static float _ccv_tld_nnc_compute_threshold(ccv_tld_t* tld, float nnc_thres, ccv_dense_matrix_t* ga, ccv_dense_matrix_t* sat, ccv_dense_matrix_t* sqsat, double var_thres, ccv_array_t* bad, int starter)
{
 int i;
 dsfmt_t* dsfmt = (dsfmt_t*)tld->dsfmt;
 for (i = starter; i < bad->rnum; i++)
 {
  ccv_comp_t* box = (ccv_comp_t*)ccv_array_get(bad, i);
  if (_ccv_tld_box_variance(sat, sqsat, box->rect) > var_thres)
  {
   if (dsfmt_genrand_close_open(dsfmt) <= 0.1)
   {
    ccv_dense_matrix_t* b = 0;
    _ccv_tld_fetch_patch(tld, ga, &b, 0, box->rect);
    float c = _ccv_tld_sv_classify(tld, b, 0, 0, 0, 0);
    ccv_matrix_free(b);
    if (c > nnc_thres)
     nnc_thres = c;
   }
  }
 }
 return nnc_thres;
}
