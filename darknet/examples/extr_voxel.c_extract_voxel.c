
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int w; int h; } ;
typedef TYPE_1__ image ;
typedef int CvCapture ;


 int best_3d_shift_r (TYPE_1__,TYPE_1__,int,int) ;
 TYPE_1__ crop_image (TYPE_1__,int,int,int,int) ;
 int * cvCaptureFromFile (char*) ;
 int free_image (TYPE_1__) ;
 TYPE_1__ get_image_from_stream (int *) ;
 int printf (char*,...) ;
 int save_image (TYPE_1__,char*) ;
 int sprintf (char*,char*,char*,int) ;

void extract_voxel(char *lfile, char *rfile, char *prefix)
{
    printf("need OpenCV for extraction\n");

}
