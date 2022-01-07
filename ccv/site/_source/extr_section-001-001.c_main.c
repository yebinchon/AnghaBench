
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_dense_matrix_t ;


 int CCV_IO_ANY_FILE ;
 int CCV_IO_GRAY ;
 int CCV_IO_PNG_FILE ;
 int ccv_read (char*,int **,int) ;
 int ccv_write (int *,char*,int ,int ,int ) ;

int main(int argc, char** argv)
{
 ccv_dense_matrix_t* image = 0;
 ccv_read(argv[1], &image, CCV_IO_GRAY | CCV_IO_ANY_FILE);
 ccv_write(image, argv[2], 0, CCV_IO_PNG_FILE, 0);
 return 0;
}
