
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float nnc_thres; float nnc_collect; } ;
struct TYPE_7__ {TYPE_3__** sv; TYPE_1__ params; } ;
typedef TYPE_2__ ccv_tld_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_8__ {scalar_t__ rnum; } ;


 float _ccv_tld_sv_classify (TYPE_2__*,int *,int ,int ,int*,int*) ;
 int ccv_array_push (TYPE_3__*,int **) ;

__attribute__((used)) static int _ccv_tld_sv_correct(ccv_tld_t* tld, ccv_dense_matrix_t* a, int y)
{
 int anyp, anyn;
 if (y == 1 && tld->sv[1]->rnum == 0)
 {
  ccv_array_push(tld->sv[1], &a);
  return 0;
 }
 float conf = _ccv_tld_sv_classify(tld, a, 0, 0, &anyp, &anyn);
 if (y == 1 && conf < tld->params.nnc_thres)
 {
  ccv_array_push(tld->sv[1], &a);
  return 0;
 } else if (y == 0 && conf > tld->params.nnc_collect) {
  ccv_array_push(tld->sv[0], &a);
  return 0;
 }
 return -1;
}
