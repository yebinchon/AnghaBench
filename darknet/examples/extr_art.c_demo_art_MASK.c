#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_12__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;
typedef  int /*<<< orphan*/  idx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 TYPE_2__ FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_2__ FUNC7 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void FUNC11(char *cfgfile, char *weightfile, int cam_index)
{
#ifdef OPENCV
    network *net = load_network(cfgfile, weightfile, 0);
    set_batch_network(net, 1);

    srand(2222222);

    void * cap = open_video_stream(0, cam_index, 0,0,0);

    char *window = "ArtJudgementBot9000!!!";
    if(!cap) error("Couldn't connect to webcam.\n");
    int i;
    int idx[] = {37, 401, 434};
    int n = sizeof(idx)/sizeof(idx[0]);

    while(1){
        image in = get_image_from_stream(cap);
        image in_s = resize_image(in, net->w, net->h);

        float *p = network_predict(net, in_s.data);

        printf("\033[2J");
        printf("\033[1;1H");

        float score = 0;
        for(i = 0; i < n; ++i){
            float s = p[idx[i]];
            if (s > score) score = s;
        }
        score = score;
        printf("I APPRECIATE THIS ARTWORK: %10.7f%%\n", score*100);
        printf("[");
	int upper = 30;
        for(i = 0; i < upper; ++i){
            printf("%c", ((i+.5) < score*upper) ? 219 : ' ');
        }
        printf("]\n");

        show_image(in, window, 1);
        free_image(in_s);
        free_image(in);
    }
#endif
}