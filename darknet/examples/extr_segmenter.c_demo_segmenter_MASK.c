#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_usec; } ;
struct TYPE_15__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 TYPE_2__ FUNC2 (void*) ; 
 TYPE_2__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC5 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC7 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC9 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct timeval*,struct timeval*,struct timeval*) ; 

void FUNC15(char *datacfg, char *cfg, char *weights, int cam_index, const char *filename)
{
#ifdef OPENCV
    printf("Classifier Demo\n");
    network *net = load_network(cfg, weights, 0);
    set_batch_network(net, 1);

    srand(2222222);
    void * cap = open_video_stream(filename, cam_index, 0,0,0);

    if(!cap) error("Couldn't connect to webcam.\n");
    float fps = 0;

    while(1){
        struct timeval tval_before, tval_after, tval_result;
        gettimeofday(&tval_before, NULL);

        image in = get_image_from_stream(cap);
        image in_s = letterbox_image(in, net->w, net->h);

        network_predict(net, in_s.data);

        printf("\033[2J");
        printf("\033[1;1H");
        printf("\nFPS:%.0f\n",fps);

        image pred = get_network_image(net);
        image prmask = mask_to_rgb(pred);
        show_image(prmask, "Segmenter", 10);
        
        free_image(in_s);
        free_image(in);
        free_image(prmask);

        gettimeofday(&tval_after, NULL);
        timersub(&tval_after, &tval_before, &tval_result);
        float curr = 1000000.f/((long int)tval_result.tv_usec);
        fps = .9*fps + .1*curr;
    }
#endif
}