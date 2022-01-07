
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gsl_rng ;
struct TYPE_4__ {int width; int height; int y; int x; } ;
typedef TYPE_1__ ccv_rect_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_5__ {double roll; double pitch; double yaw; } ;
typedef TYPE_2__ ccv_decimal_pose_t ;
typedef int FILE ;


 int CCV_IO_ANY_FILE ;
 int CCV_IO_GRAY ;
 int CCV_IO_PNG_FILE ;
 int CCV_IO_RGB_COLOR ;
 double CCV_PI ;
 scalar_t__ EOF ;
 int * _ccv_aflw_slice_with_rect (int *,int *,TYPE_1__,int ,int ,int,double,double) ;
 int assert (int) ;
 int ccv_margin (int ,int ,int ,int ) ;
 int ccv_matrix_free (int *) ;
 int ccv_read (char*,int **,int) ;
 int ccv_size (int,int) ;
 int ccv_write (int *,char*,int ,int ,int ) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ fscanf (int *,char*,char*,int *,int *,int*,int*,double*,double*,double*) ;
 int * gsl_rng_alloc (int ) ;
 int gsl_rng_default ;
 int gsl_rng_free (int *) ;
 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

int main(int argc, char** argv)
{
 assert(0 && "aflw requires GSL library support");

 return 0;
}
