#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; } ;
struct TYPE_17__ {int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_18__ {double h; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int,int,TYPE_2__,float*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__) ; 
 TYPE_2__ FUNC5 (void*) ; 
 TYPE_2__ FUNC6 (TYPE_2__**,char*,int) ; 
 char** FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__ FUNC10 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC11 () ; 
 TYPE_1__* FUNC12 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC14 (char const*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int /*<<< orphan*/ * FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,float,char*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct timeval*,struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int,int*) ; 

void FUNC25(char *datacfg, char *cfgfile, char *weightfile, int cam_index, const char *filename)
{
#ifdef OPENCV
    char *base = basecfg(cfgfile);
    image **alphabet = load_alphabet();
    printf("Classifier Demo\n");
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);
    list *options = read_data_cfg(datacfg);

    srand(2222222);

    int w = 1280;
    int h = 720;
    void * cap = open_video_stream(filename, cam_index, w, h, 0);

    int top = option_find_int(options, "top", 1);

    char *label_list = option_find_str(options, "labels", 0);
    char *name_list = option_find_str(options, "names", label_list);
    char **names = get_labels(name_list);

    int *indexes = calloc(top, sizeof(int));

    if(!cap) error("Couldn't connect to webcam.\n");
    float fps = 0;
    int i;

    while(1){
        struct timeval tval_before, tval_after, tval_result;
        gettimeofday(&tval_before, NULL);

        image in = get_image_from_stream(cap);
        //image in_s = resize_image(in, net->w, net->h);
        image in_s = letterbox_image(in, net->w, net->h);

        float *predictions = network_predict(net, in_s.data);
        if(net->hierarchy) hierarchy_predictions(predictions, net->outputs, net->hierarchy, 1, 1);
        top_predictions(net, top, indexes);

        printf("\033[2J");
        printf("\033[1;1H");
        printf("\nFPS:%.0f\n",fps);

        int lh = in.h*.03;
        int toph = 3*lh;

        float rgb[3] = {1,1,1};
        for(i = 0; i < top; ++i){
            printf("%d\n", toph);
            int index = indexes[i];
            printf("%.1f%%: %s\n", predictions[index]*100, names[index]);

            char buff[1024];
            sprintf(buff, "%3.1f%%: %s\n", predictions[index]*100, names[index]);
            image label = get_label(alphabet, buff, lh);
            draw_label(in, toph, lh, label, rgb);
            toph += 2*lh;
            free_image(label);
        }

        show_image(in, base, 10);
        free_image(in_s);
        free_image(in);

        gettimeofday(&tval_after, NULL);
        timersub(&tval_after, &tval_before, &tval_result);
        float curr = 1000000.f/((long int)tval_result.tv_usec);
        fps = .9*fps + .1*curr;
    }
#endif
}