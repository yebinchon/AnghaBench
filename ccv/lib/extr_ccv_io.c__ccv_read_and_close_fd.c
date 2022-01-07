
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_dense_matrix_t ;
typedef int FILE ;


 int CCV_8U ;
 int CCV_IO_ANY_FILE ;


 int CCV_IO_FINAL ;


 int SEEK_SET ;
 int _ccv_read_binary_fd (int *,int **,int) ;
 int _ccv_read_bmp_fd (int *,int **,int) ;
 int _ccv_read_jpeg_fd (int *,int **,int) ;
 int _ccv_read_png_fd (int *,int **,int) ;
 int ccv_make_matrix_immutable (int *) ;
 int fclose (int *) ;
 int fread (unsigned char*,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;

__attribute__((used)) static int _ccv_read_and_close_fd(FILE* fd, ccv_dense_matrix_t** x, int type)
{
 int ctype = (type & 0xF00) ? CCV_8U | ((type & 0xF00) >> 8) : 0;
 if ((type & 0XFF) == CCV_IO_ANY_FILE)
 {
  unsigned char sig[8];
  (void) fread(sig, 1, 8, fd);
  if (memcmp(sig, "\x89\x50\x4e\x47\xd\xa\x1a\xa", 8) == 0)
   type = 128;
  else if (memcmp(sig, "\xff\xd8\xff", 3) == 0)
   type = 129;
  else if (memcmp(sig, "BM", 2) == 0)
   type = 130;
  else if (memcmp(sig, "CCVBINDM", 8) == 0)
   type = 131;
  fseek(fd, 0, SEEK_SET);
 }
 switch (type & 0XFF)
 {
  case 130:
   _ccv_read_bmp_fd(fd, x, ctype);
   break;
  case 131:
   _ccv_read_binary_fd(fd, x, ctype);
 }
 if (*x != 0)
  ccv_make_matrix_immutable(*x);
 if (type & CCV_IO_ANY_FILE)
  fclose(fd);
 return CCV_IO_FINAL;
}
