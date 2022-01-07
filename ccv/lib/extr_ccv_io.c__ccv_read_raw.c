
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int step; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;


 int CCV_8U ;
 int CCV_C1 ;
 int CCV_C3 ;
 int CCV_C4 ;




 int CCV_IO_FINAL ;

 int CCV_IO_NO_COPY ;


 int CCV_NO_DATA_ALLOC ;
 int _ccv_read_abgr_raw (TYPE_1__**,void*,int,int,int,int) ;
 int _ccv_read_argb_raw (TYPE_1__**,void*,int,int,int,int) ;
 int _ccv_read_bgr_raw (TYPE_1__**,void*,int,int,int,int) ;
 int _ccv_read_bgra_raw (TYPE_1__**,void*,int,int,int,int) ;
 int _ccv_read_gray_raw (TYPE_1__**,void*,int,int,int,int) ;
 int _ccv_read_rgb_raw (TYPE_1__**,void*,int,int,int,int) ;
 int _ccv_read_rgba_raw (TYPE_1__**,void*,int,int,int,int) ;
 int assert (int) ;
 TYPE_1__* ccv_dense_matrix_new (int,int,int,void*,int ) ;
 int ccv_make_matrix_immutable (TYPE_1__*) ;

__attribute__((used)) static int _ccv_read_raw(ccv_dense_matrix_t** x, void* data, int type, int rows, int cols, int scanline)
{
 assert(rows > 0 && cols > 0 && scanline > 0);
 if (type & CCV_IO_NO_COPY)
 {




  int ctype = CCV_8U | CCV_C1;
  switch (type & 0xFF)
  {
   case 128:
   case 131:
    ctype = CCV_8U | CCV_C3;
    break;
   case 129:
   case 133:
   case 132:
   case 134:
    ctype = CCV_8U | CCV_C4;
    break;
   case 130:
   default:

    break;
  }
  *x = ccv_dense_matrix_new(rows, cols, ctype | CCV_NO_DATA_ALLOC, data, 0);
  (*x)->step = scanline;
 } else {
  switch (type & 0xFF)
  {
   case 128:
    _ccv_read_rgb_raw(x, data, type, rows, cols, scanline);
    break;
   case 129:
    _ccv_read_rgba_raw(x, data, type, rows, cols, scanline);
    break;
   case 133:
    _ccv_read_argb_raw(x, data, type, rows, cols, scanline);
    break;
   case 131:
    _ccv_read_bgr_raw(x, data, type, rows, cols, scanline);
    break;
   case 132:
    _ccv_read_bgra_raw(x, data, type, rows, cols, scanline);
    break;
   case 134:
    _ccv_read_abgr_raw(x, data, type, rows, cols, scanline);
    break;
   case 130:
    _ccv_read_gray_raw(x, data, type, rows, cols, scanline);
    break;
  }
 }
 if (*x != 0)
  ccv_make_matrix_immutable(*x);
 return CCV_IO_FINAL;
}
