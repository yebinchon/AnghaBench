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
struct TYPE_17__ {int n; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_2__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_18__ {int side; int n; int /*<<< orphan*/  classes; } ;
typedef  TYPE_2__ layer ;
struct TYPE_19__ {float* data; } ;
typedef  TYPE_3__ image ;
typedef  int /*<<< orphan*/  detection ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__,int /*<<< orphan*/ *,int,float,int /*<<< orphan*/ ,TYPE_3__**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*,int,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 TYPE_3__** FUNC8 () ; 
 TYPE_3__ FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 TYPE_3__ FUNC13 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__,char*) ; 
 double FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  voc_names ; 

void FUNC21(char *cfgfile, char *weightfile, char *filename, float thresh)
{
    image **alphabet = FUNC8();
    network *net = FUNC10(cfgfile, weightfile, 0);
    layer l = net->layers[net->n-1];
    FUNC16(net, 1);
    FUNC18(2222222);
    clock_t time;
    char buff[256];
    char *input = buff;
    float nms=.4;
    while(1){
        if(filename){
            FUNC19(input, filename, 256);
        } else {
            FUNC12("Enter Image Path: ");
            FUNC3(stdout);
            input = FUNC4(input, 256, stdin);
            if(!input) return;
            FUNC20(input, "\n");
        }
        image im = FUNC9(input,0,0);
        image sized = FUNC13(im, net->w, net->h);
        float *X = sized.data;
        time=FUNC0();
        FUNC11(net, X);
        FUNC12("%s: Predicted in %f seconds.\n", input, FUNC15(FUNC0()-time));

        int nboxes = 0;
        detection *dets = FUNC7(net, 1, 1, thresh, 0, 0, 0, &nboxes);
        if (nms) FUNC1(dets, l.side*l.side*l.n, l.classes, nms);

        FUNC2(im, dets, l.side*l.side*l.n, thresh, voc_names, alphabet, 20);
        FUNC14(im, "predictions");
        FUNC17(im, "predictions", 0);
        FUNC5(dets, nboxes);
        FUNC6(im);
        FUNC6(sized);
        if (filename) break;
    }
}