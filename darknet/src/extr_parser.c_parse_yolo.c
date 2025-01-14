
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ inputs; int h; int w; int batch; } ;
typedef TYPE_1__ size_params ;
typedef int list ;
struct TYPE_7__ {scalar_t__ outputs; float* biases; int map; void* random; void* truth_thresh; void* ignore_thresh; void* jitter; void* max_boxes; } ;
typedef TYPE_2__ layer ;


 int assert (int) ;
 float atof (char*) ;
 TYPE_2__ make_yolo_layer (int ,int ,int ,int,int,int*,int) ;
 void* option_find_float (int *,char*,int) ;
 int option_find_int (int *,char*,int) ;
 void* option_find_int_quiet (int *,char*,int) ;
 char* option_find_str (int *,char*,int ) ;
 int* parse_yolo_mask (char*,int*) ;
 int read_map (char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

layer parse_yolo(list *options, size_params params)
{
    int classes = option_find_int(options, "classes", 20);
    int total = option_find_int(options, "num", 1);
    int num = total;

    char *a = option_find_str(options, "mask", 0);
    int *mask = parse_yolo_mask(a, &num);
    layer l = make_yolo_layer(params.batch, params.w, params.h, num, total, mask, classes);
    assert(l.outputs == params.inputs);

    l.max_boxes = option_find_int_quiet(options, "max",90);
    l.jitter = option_find_float(options, "jitter", .2);

    l.ignore_thresh = option_find_float(options, "ignore_thresh", .5);
    l.truth_thresh = option_find_float(options, "truth_thresh", 1);
    l.random = option_find_int_quiet(options, "random", 0);

    char *map_file = option_find_str(options, "map", 0);
    if (map_file) l.map = read_map(map_file);

    a = option_find_str(options, "anchors", 0);
    if(a){
        int len = strlen(a);
        int n = 1;
        int i;
        for(i = 0; i < len; ++i){
            if (a[i] == ',') ++n;
        }
        for(i = 0; i < n; ++i){
            float bias = atof(a);
            l.biases[i] = bias;
            a = strchr(a, ',')+1;
        }
    }
    return l;
}
