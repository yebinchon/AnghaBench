
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_dense_matrix_t ;
typedef int FILE ;


 int CCV_IO_ANY_FILE ;

 int CCV_IO_ERROR ;
 int CCV_IO_FINAL ;


 int _ccv_write_binary_fd (int *,int *,void*) ;
 int _ccv_write_jpeg_fd (int *,int *,void*) ;
 int _ccv_write_png_fd (int *,int *,void*) ;
 int assert (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;

int ccv_write(ccv_dense_matrix_t* mat, char* out, int* len, int type, void* conf)
{
 FILE* fd = 0;
 if (type & CCV_IO_ANY_FILE)
 {
  fd = fopen(out, "wb");
  if (!fd)
   return CCV_IO_ERROR;
 }
 switch (type)
 {
  case 129:





   assert(0 && "ccv_write requires libjpeg support for JPEG format");

   break;
  case 128:





   assert(0 && "ccv_write requires libpng support for PNG format");

   break;
  case 130:
   _ccv_write_binary_fd(mat, fd, conf);
   if (len != 0)
    *len = 0;
   break;
 }
 if (type & CCV_IO_ANY_FILE)
  fclose(fd);
 return CCV_IO_FINAL;
}
