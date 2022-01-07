
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int type; int rows; int cols; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_32S ;
 int CCV_8U ;
 scalar_t__ alloca (int) ;
 int assert (int) ;
 int ccv_matrix_getter (int,int ) ;
 int for_block ;
 int memset (int*,int ,int) ;

int ccv_otsu(ccv_dense_matrix_t* a, double* outvar, int range)
{
 assert((a->type & CCV_32S) || (a->type & CCV_8U));
 int* histogram = (int*)alloca(range * sizeof(int));
 memset(histogram, 0, sizeof(int) * range);
 int i, j;
 unsigned char* a_ptr = a->data.u8;







 ccv_matrix_getter(a->type, for_block);

 double sum = 0, sumB = 0;
 for (i = 0; i < range; i++)
  sum += i * histogram[i];
 int wB = 0, wF = 0, total = a->rows * a->cols;
 double maxVar = 0;
 int threshold = 0;
 for (i = 0; i < range; i++)
 {
  wB += histogram[i];
  if (wB == 0)
   continue;
  wF = total - wB;
  if (wF == 0)
   break;
  sumB += i * histogram[i];
  double mB = sumB / wB;
  double mF = (sum - sumB) / wF;
  double var = wB * wF * (mB - mF) * (mB - mF);
  if (var > maxVar)
  {
   maxVar = var;
   threshold = i;
  }
 }
 if (outvar != 0)
  *outvar = maxVar / total / total;
 return threshold;
}
