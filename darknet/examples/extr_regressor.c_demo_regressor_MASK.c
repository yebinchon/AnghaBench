#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; } ;
struct TYPE_12__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_13__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 TYPE_2__ FUNC0 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 TYPE_2__ FUNC3 (void*) ; 
 char** FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 TYPE_1__* FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/ * FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (struct timeval*,struct timeval*,struct timeval*) ; 

void FUNC18(char *datacfg, char *cfgfile, char *weightfile, int cam_index, const char *filename)
{
#ifdef OPENCV
    printf("Regressor Demo\n");
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);

    srand(2222222);
    list *options = read_data_cfg(datacfg);
    int classes = option_find_int(options, "classes", 1);
    char *name_list = option_find_str(options, "names", 0);
    char **names = get_labels(name_list);

    void * cap = open_video_stream(filename, cam_index, 0,0,0);
    if(!cap) error("Couldn't connect to webcam.\n");
    float fps = 0;

    while(1){
        struct timeval tval_before, tval_after, tval_result;
        gettimeofday(&tval_before, NULL);

        image in = get_image_from_stream(cap);
        image crop = center_crop_image(in, net->w, net->h);
        grayscale_image_3c(crop);

        float *predictions = network_predict(net, crop.data);

        printf("\033[2J");
        printf("\033[1;1H");
        printf("\nFPS:%.0f\n",fps);

        int i;
        for(i = 0; i < classes; ++i){
            printf("%s: %f\n", names[i], predictions[i]);
        }

        show_image(crop, "Regressor", 10);
        free_image(in);
        free_image(crop);

        gettimeofday(&tval_after, NULL);
        timersub(&tval_after, &tval_before, &tval_result);
        float curr = 1000000.f/((long int)tval_result.tv_usec);
        fps = .9*fps + .1*curr;
    }
#endif
}