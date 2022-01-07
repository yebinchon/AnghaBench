
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cols; double rows; int type; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;
struct TYPE_6__ {int di; int si; float alpha; } ;
typedef TYPE_2__ ccv_area_alpha_t ;


 int CCV_GET_CHANNEL (int ) ;
 scalar_t__ alloca (int) ;
 int assert (int) ;
 int ccv_matrix_getter (int ,int ,int ,int ) ;
 int ccv_matrix_setter ;
 int ccv_min (int,int) ;
 int for_block ;

__attribute__((used)) static void _ccv_resample_area(ccv_dense_matrix_t* a, ccv_dense_matrix_t* b)
{
 assert(a->cols > 0 && b->cols > 0);
 ccv_area_alpha_t* xofs = (ccv_area_alpha_t*)alloca(sizeof(ccv_area_alpha_t) * a->cols * 2);
 int ch = CCV_GET_CHANNEL(a->type);
 double scale_x = (double)a->cols / b->cols;
 double scale_y = (double)a->rows / b->rows;
 double scale = 1.f / (scale_x * scale_y);
 int dx, dy, sx, sy, i, k;
 for (dx = 0, k = 0; dx < b->cols; dx++)
 {
  double fsx1 = dx * scale_x, fsx2 = fsx1 + scale_x;
  int sx1 = (int)(fsx1 + 1.0 - 1e-6), sx2 = (int)(fsx2);
  sx1 = ccv_min(sx1, a->cols - 1);
  sx2 = ccv_min(sx2, a->cols - 1);

  if (sx1 > fsx1)
  {
   xofs[k].di = dx * ch;
   xofs[k].si = (sx1 - 1) * ch;
   xofs[k++].alpha = (float)((sx1 - fsx1) * scale);
  }

  for (sx = sx1; sx < sx2; sx++)
  {
   xofs[k].di = dx * ch;
   xofs[k].si = sx * ch;
   xofs[k++].alpha = (float)scale;
  }

  if (fsx2 - sx2 > 1e-3)
  {
   xofs[k].di = dx * ch;
   xofs[k].si = sx2 * ch;
   xofs[k++].alpha = (float)((fsx2 - sx2) * scale);
  }
 }
 int xofs_count = k;
 float* buf = (float*)alloca(b->cols * ch * sizeof(float));
 float* sum = (float*)alloca(b->cols * ch * sizeof(float));
 for (dx = 0; dx < b->cols * ch; dx++)
  buf[dx] = sum[dx] = 0;
 dy = 0;
 ccv_matrix_getter(a->type, ccv_matrix_setter, b->type, for_block);

}
