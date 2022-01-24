#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int n; TYPE_2__* layers; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_18__ {int /*<<< orphan*/  classes; } ;
typedef  TYPE_2__ layer ;
struct TYPE_19__ {float* data; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_3__ image ;
typedef  int /*<<< orphan*/  detection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int /*<<< orphan*/ *,int,float,char**,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__) ; 
 char** FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_3__ FUNC8 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__** FUNC9 () ; 
 TYPE_3__ FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,float*) ; 
 char* FUNC14 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/ * FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 double FUNC23 () ; 

void FUNC24(char *datacfg, char *cfgfile, char *weightfile, char *filename, float thresh, float hier_thresh, char *outfile, int fullscreen)
{
    list *options = FUNC16(datacfg);
    char *name_list = FUNC14(options, "names", "data/names.list");
    char **names = FUNC6(name_list);

    image **alphabet = FUNC9();
    network *net = FUNC11(cfgfile, weightfile, 0);
    FUNC18(net, 1);
    FUNC20(2222222);
    double time;
    char buff[256];
    char *input = buff;
    float nms=.45;
    while(1){
        if(filename){
            FUNC21(input, filename, 256);
        } else {
            FUNC15("Enter Image Path: ");
            FUNC2(stdout);
            input = FUNC3(input, 256, stdin);
            if(!input) return;
            FUNC22(input, "\n");
        }
        image im = FUNC10(input,0,0);
        image sized = FUNC8(im, net->w, net->h);
        //image sized = resize_image(im, net->w, net->h);
        //image sized2 = resize_max(im, net->w);
        //image sized = crop_image(sized2, -((net->w - sized2.w)/2), -((net->h - sized2.h)/2), net->w, net->h);
        //resize_network(net, sized.w, sized.h);
        layer l = net->layers[net->n-1];


        float *X = sized.data;
        time=FUNC23();
        FUNC13(net, X);
        FUNC15("%s: Predicted in %f seconds.\n", input, FUNC23()-time);
        int nboxes = 0;
        detection *dets = FUNC7(net, im.w, im.h, thresh, hier_thresh, 0, 1, &nboxes);
        //printf("%d\n", nboxes);
        //if (nms) do_nms_obj(boxes, probs, l.w*l.h*l.n, l.classes, nms);
        if (nms) FUNC0(dets, nboxes, l.classes, nms);
        FUNC1(im, dets, nboxes, thresh, names, alphabet, l.classes);
        FUNC4(dets, nboxes);
        if(outfile){
            FUNC17(im, outfile);
        }
        else{
            FUNC17(im, "predictions");
#ifdef OPENCV
            make_window("predictions", 512, 512, 0);
            show_image(im, "predictions", 0);
#endif
        }

        FUNC5(im);
        FUNC5(sized);
        if (filename) break;
    }
}