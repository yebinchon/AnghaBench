
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {float* f32; } ;
struct TYPE_7__ {int* dim; } ;
struct TYPE_9__ {TYPE_2__ data; TYPE_1__ info; } ;
typedef TYPE_3__ const ccv_nnc_tensor_view_t ;


 int CCV_NNC_MAX_DIM ;
 int assert (int) ;
 int ccv_nnc_tensor_nd (int*) ;
 int ccv_nnc_tensor_view_get_inc (TYPE_3__ const*,int*) ;

__attribute__((used)) static void _ccv_nnc_tensor_nhwc_nchw(const ccv_nnc_tensor_view_t* a, ccv_nnc_tensor_view_t* b)
{

 int ainc[CCV_NNC_MAX_DIM + 2];
 int binc[CCV_NNC_MAX_DIM + 2];
 int k;

 const int a_nd = ccv_nnc_tensor_nd(a->info.dim);
 const int b_nd = ccv_nnc_tensor_nd(b->info.dim);
 const int a_offset = CCV_NNC_MAX_DIM + 2 - a_nd;
 assert(a_offset == 0 || a_offset == 1);
 const int b_offset = CCV_NNC_MAX_DIM + 2 - b_nd;
 assert(b_offset == 0 || b_offset == 1);
 ccv_nnc_tensor_view_get_inc(a, ainc);
 ccv_nnc_tensor_view_get_inc(b, binc);

 assert((a_offset == 0 ? a->info.dim[0] : 1) == (b_offset == 0 ? b->info.dim[0] : 1));
 const int n = (a_offset == 0 ? a->info.dim[0] : 1);

 assert(a->info.dim[a_nd - 1] == b->info.dim[1 - b_offset]);
 const int c = a->info.dim[a_nd - 1];

 int hw[CCV_NNC_MAX_DIM];
 for (k = 0; k < CCV_NNC_MAX_DIM; k++)
 {
  assert(a->info.dim[k + 1 - a_offset] == b->info.dim[k + 2 - b_offset]);
  hw[k] = a->info.dim[k + 1 - a_offset];
 }
 assert(CCV_NNC_MAX_DIM == 2);
 int i[CCV_NNC_MAX_DIM + 2];
 float* ap = a->data.f32;
 float* bp = b->data.f32;

 for (i[0] = 0; i[0] < n; i[0]++)
 {
  for (i[3] = 0; i[3] < c; i[3]++)
  {
   float* apu = ap + i[3];
   for (i[1] = 0; i[1] < hw[0]; i[1]++)
   {
    for (i[2] = 0; i[2] < hw[1]; i[2]++)
     bp[i[2]] = apu[i[2] * ainc[3]];
    apu += ainc[2] * ainc[3];
    bp += binc[3];
   }
   bp += (binc[2] - hw[0]) * binc[3];
  }
  ap += ainc[1] * ainc[2] * ainc[3];
  bp += (binc[1] - c) * binc[2] * binc[3];
 }
}
