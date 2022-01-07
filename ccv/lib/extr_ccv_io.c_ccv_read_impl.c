
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; char* buffer; int pos; } ;
typedef TYPE_1__ ccv_io_mem_t ;
typedef int ccv_dense_matrix_t ;
typedef int FILE ;


 int CCV_IO_ANY_FILE ;
 int CCV_IO_ANY_RAW ;
 int CCV_IO_ANY_STREAM ;
 int CCV_IO_DEFLATE_STREAM ;
 int CCV_IO_ERROR ;
 int CCV_IO_UNKNOWN ;
 int _ccv_read_and_close_fd (int *,int **,int) ;
 int _ccv_read_raw (int **,void*,int,int,int,int) ;
 int assert (int) ;
 int * fmemopen (void*,size_t,char*) ;
 int * fopen (char const*,char*) ;
 int * funopen (TYPE_1__*,int ,int ,int ,int ) ;
 int readfn ;
 int seekfn ;

int ccv_read_impl(const void* in, ccv_dense_matrix_t** x, int type, int rows, int cols, int scanline)
{
 FILE* fd = 0;
 if (type & CCV_IO_ANY_FILE)
 {
  assert(rows == 0 && cols == 0 && scanline == 0);
  fd = fopen((const char*)in, "rb");
  if (!fd)
   return CCV_IO_ERROR;
  return _ccv_read_and_close_fd(fd, x, type);
 } else if (type & CCV_IO_ANY_STREAM) {
  assert(rows > 8 && cols == 0 && scanline == 0);
  assert((type & 0xFF) != CCV_IO_DEFLATE_STREAM);
 } else if (type & CCV_IO_ANY_RAW) {
  return _ccv_read_raw(x, (void*)in , type, rows, cols, scanline);
 }
 return CCV_IO_UNKNOWN;
}
