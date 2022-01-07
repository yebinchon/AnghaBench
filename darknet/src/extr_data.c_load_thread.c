
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct load_args {int exposure; int saturation; int aspect; scalar_t__ type; int hue; int angle; int size; int max; int min; int classes; int m; int n; int paths; int * d; int h; int w; void** im; int * resized; int path; int jitter; int num_boxes; int scale; int coords; int out_h; int out_w; int center; int hierarchy; int labels; } ;
typedef struct load_args load_args ;


 scalar_t__ CLASSIFICATION_DATA ;
 scalar_t__ COMPARE_DATA ;
 scalar_t__ DETECTION_DATA ;
 scalar_t__ IMAGE_DATA ;
 scalar_t__ INSTANCE_DATA ;
 scalar_t__ ISEG_DATA ;
 scalar_t__ LETTERBOX_DATA ;
 scalar_t__ OLD_CLASSIFICATION_DATA ;
 scalar_t__ REGION_DATA ;
 scalar_t__ REGRESSION_DATA ;
 scalar_t__ SEGMENTATION_DATA ;
 scalar_t__ SUPER_DATA ;
 scalar_t__ SWAG_DATA ;
 scalar_t__ TAG_DATA ;
 scalar_t__ WRITING_DATA ;
 int free (void*) ;
 int letterbox_image (void*,int ,int ) ;
 int load_data_augment (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int,int,int ) ;
 int load_data_compare (int ,int ,int ,int ,int ,int ) ;
 int load_data_detection (int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int load_data_iseg (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int,int) ;
 int load_data_mask (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int,int) ;
 int load_data_old (int ,int ,int ,int ,int ,int ,int ) ;
 int load_data_region (int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int) ;
 int load_data_regression (int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int,int) ;
 int load_data_seg (int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int,int,int ) ;
 int load_data_super (int ,int ,int ,int ,int ,int ) ;
 int load_data_swag (int ,int ,int ,int ) ;
 int load_data_tag (int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int,int) ;
 int load_data_writing (int ,int ,int ,int ,int ,int ,int ) ;
 void* load_image_color (int ,int ,int ) ;
 int resize_image (void*,int ,int ) ;

void *load_thread(void *ptr)
{

    load_args a = *(struct load_args*)ptr;
    if(a.exposure == 0) a.exposure = 1;
    if(a.saturation == 0) a.saturation = 1;
    if(a.aspect == 0) a.aspect = 1;

    if (a.type == OLD_CLASSIFICATION_DATA){
        *a.d = load_data_old(a.paths, a.n, a.m, a.labels, a.classes, a.w, a.h);
    } else if (a.type == REGRESSION_DATA){
        *a.d = load_data_regression(a.paths, a.n, a.m, a.classes, a.min, a.max, a.size, a.angle, a.aspect, a.hue, a.saturation, a.exposure);
    } else if (a.type == CLASSIFICATION_DATA){
        *a.d = load_data_augment(a.paths, a.n, a.m, a.labels, a.classes, a.hierarchy, a.min, a.max, a.size, a.angle, a.aspect, a.hue, a.saturation, a.exposure, a.center);
    } else if (a.type == SUPER_DATA){
        *a.d = load_data_super(a.paths, a.n, a.m, a.w, a.h, a.scale);
    } else if (a.type == WRITING_DATA){
        *a.d = load_data_writing(a.paths, a.n, a.m, a.w, a.h, a.out_w, a.out_h);
    } else if (a.type == ISEG_DATA){
        *a.d = load_data_iseg(a.n, a.paths, a.m, a.w, a.h, a.classes, a.num_boxes, a.scale, a.min, a.max, a.angle, a.aspect, a.hue, a.saturation, a.exposure);
    } else if (a.type == INSTANCE_DATA){
        *a.d = load_data_mask(a.n, a.paths, a.m, a.w, a.h, a.classes, a.num_boxes, a.coords, a.min, a.max, a.angle, a.aspect, a.hue, a.saturation, a.exposure);
    } else if (a.type == SEGMENTATION_DATA){
        *a.d = load_data_seg(a.n, a.paths, a.m, a.w, a.h, a.classes, a.min, a.max, a.angle, a.aspect, a.hue, a.saturation, a.exposure, a.scale);
    } else if (a.type == REGION_DATA){
        *a.d = load_data_region(a.n, a.paths, a.m, a.w, a.h, a.num_boxes, a.classes, a.jitter, a.hue, a.saturation, a.exposure);
    } else if (a.type == DETECTION_DATA){
        *a.d = load_data_detection(a.n, a.paths, a.m, a.w, a.h, a.num_boxes, a.classes, a.jitter, a.hue, a.saturation, a.exposure);
    } else if (a.type == SWAG_DATA){
        *a.d = load_data_swag(a.paths, a.n, a.classes, a.jitter);
    } else if (a.type == COMPARE_DATA){
        *a.d = load_data_compare(a.n, a.paths, a.m, a.classes, a.w, a.h);
    } else if (a.type == IMAGE_DATA){
        *(a.im) = load_image_color(a.path, 0, 0);
        *(a.resized) = resize_image(*(a.im), a.w, a.h);
    } else if (a.type == LETTERBOX_DATA){
        *(a.im) = load_image_color(a.path, 0, 0);
        *(a.resized) = letterbox_image(*(a.im), a.w, a.h);
    } else if (a.type == TAG_DATA){
        *a.d = load_data_tag(a.paths, a.n, a.m, a.classes, a.min, a.max, a.size, a.angle, a.aspect, a.hue, a.saturation, a.exposure);
    }
    free(ptr);
    return 0;
}
