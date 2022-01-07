
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* u8; } ;
struct TYPE_6__ {int step; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_8U ;
 int CCV_C3 ;


 int assert (int) ;
 TYPE_2__* ccv_dense_matrix_new (int,int,int,int ,int ) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void _ccv_read_rgb_raw(ccv_dense_matrix_t** x, const void* data, int type, int rows, int cols, int scanline)
{
 int ctype = (type & 0xF00) ? CCV_8U | ((type & 0xF00) >> 8) : CCV_8U | CCV_C3;
 ccv_dense_matrix_t* dx = *x = ccv_dense_matrix_new(rows, cols, ctype, 0, 0);
 int i, j;
 switch (type & 0xF00)
 {
  case 129:
  {
   unsigned char* g = dx->data.u8;
   unsigned char* rgb = (unsigned char*)data;
   int rgb_padding = scanline - cols * 3;
   assert(rgb_padding >= 0);
   for (i = 0; i < rows; i++)
   {
    for (j = 0; j < cols; j++)
     g[j] = (unsigned char)((rgb[0] * 6969 + rgb[1] * 23434 + rgb[2] * 2365) >> 15), rgb += 3;
    rgb += rgb_padding;
    g += dx->step;
   }
   break;
  }
  case 128:
  default:
  {
   unsigned char* x_ptr = dx->data.u8;
   unsigned char* a_ptr = (unsigned char*)data;
   assert(scanline >= cols * 3);
   for (i = 0; i < rows; i++)
   {
    memcpy(x_ptr, a_ptr, cols * 3);
    a_ptr += scanline;
    x_ptr += dx->step;
   }
   break;
  }
 }
}
