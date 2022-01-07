
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ width; scalar_t__ height; } ;
struct TYPE_7__ {TYPE_1__ patch; } ;
typedef TYPE_2__ ccv_tld_t ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int x; int y; } ;
typedef TYPE_3__ ccv_rect_t ;
typedef int ccv_matrix_t ;
typedef int ccv_dense_matrix_t ;


 int CCV_INTER_AREA ;
 int CCV_INTER_CUBIC ;
 int assert (int) ;
 int ccv_matrix_free (int *) ;
 int ccv_resample (int *,int **,int,scalar_t__,scalar_t__,int) ;
 int ccv_slice (int *,int **,int,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void _ccv_tld_fetch_patch(ccv_tld_t* tld, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, int type, ccv_rect_t box)
{
 if (box.width == tld->patch.width && box.height == tld->patch.height)
  ccv_slice(a, (ccv_matrix_t**)b, type, box.y, box.x, box.height, box.width);
 else {
  assert((box.width >= tld->patch.width && box.height >= tld->patch.height) ||
      (box.width <= tld->patch.width && box.height <= tld->patch.height));
  ccv_dense_matrix_t* c = 0;
  ccv_slice(a, (ccv_matrix_t**)&c, type, box.y, box.x, box.height, box.width);
  ccv_resample(c, b, type, tld->patch.height, tld->patch.width, CCV_INTER_AREA | CCV_INTER_CUBIC);
  ccv_matrix_free(c);
 }
}
