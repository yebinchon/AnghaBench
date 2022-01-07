
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ccv_scd_classifier_cascade_t ;
typedef int ccv_dense_matrix_t ;
struct TYPE_7__ {int x; int y; int width; int height; } ;
struct TYPE_8__ {TYPE_1__ rect; } ;
typedef TYPE_2__ ccv_comp_t ;
struct TYPE_9__ {int rnum; } ;
typedef TYPE_3__ ccv_array_t ;


 int CCV_IO_ANY_FILE ;
 int CCV_IO_RGB_COLOR ;
 int ccv_array_free (TYPE_3__*) ;
 scalar_t__ ccv_array_get (TYPE_3__*,int) ;
 int ccv_matrix_free (int *) ;
 int ccv_read (char*,int **,int) ;
 int ccv_scd_classifier_cascade_free (int *) ;
 int * ccv_scd_classifier_cascade_read (char*) ;
 int ccv_scd_default_params ;
 TYPE_3__* ccv_scd_detect_objects (int *,int **,int,int ) ;
 int printf (char*,int,int,int,int) ;

int main(int argc, char** argv)
{
 ccv_dense_matrix_t* image = 0;
 ccv_read(argv[1], &image, CCV_IO_RGB_COLOR | CCV_IO_ANY_FILE);
 ccv_scd_classifier_cascade_t* cascade = ccv_scd_classifier_cascade_read(argv[2]);
 ccv_array_t* faces = ccv_scd_detect_objects(image, &cascade, 1, ccv_scd_default_params);
 int i;
 for (i = 0; i < faces->rnum; i++)
 {
  ccv_comp_t* face = (ccv_comp_t*)ccv_array_get(faces, i);
  printf("%d %d %d %d\n", face->rect.x, face->rect.y, face->rect.width, face->rect.height);
 }
 ccv_array_free(faces);
 ccv_scd_classifier_cascade_free(cascade);
 ccv_matrix_free(image);
 return 0;
}
