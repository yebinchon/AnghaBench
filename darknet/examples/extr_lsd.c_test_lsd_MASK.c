#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int n; int w; int h; TYPE_1__* layers; } ;
typedef  TYPE_2__ network ;
struct TYPE_21__ {int w; int h; float* data; } ;
typedef  TYPE_3__ image ;
typedef  scalar_t__ clock_t ;
struct TYPE_19__ {int out_c; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 TYPE_3__ FUNC2 (TYPE_3__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__) ; 
 TYPE_3__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__) ; 
 TYPE_3__ FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,float*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 TYPE_3__ FUNC12 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__,char*) ; 
 double FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 

void FUNC20(char *cfg, char *weights, char *filename, int gray)
{
    network *net = FUNC9(cfg, weights, 0);
    FUNC15(net, 1);
    FUNC17(2222222);

    clock_t time;
    char buff[256];
    char *input = buff;
    int i, imlayer = 0;

    for (i = 0; i < net->n; ++i) {
        if (net->layers[i].out_c == 3) {
            imlayer = i;
            FUNC11("%d\n", i);
            break;
        }
    }

    while(1){
        if(filename){
            FUNC18(input, filename, 256);
        }else{
            FUNC11("Enter Image Path: ");
            FUNC3(stdout);
            input = FUNC4(input, 256, stdin);
            if(!input) return;
            FUNC19(input, "\n");
        }
        image im = FUNC8(input, 0, 0);
        image resized = FUNC12(im, net->w);
        image crop = FUNC2(resized, (resized.w - net->w)/2, (resized.h - net->h)/2, net->w, net->h);
        if(gray) FUNC7(crop);

        float *X = crop.data;
        time=FUNC0();
        FUNC10(net, X);
        image out = FUNC6(net, imlayer);
        //yuv_to_rgb(out);
        FUNC1(out);
        FUNC11("%s: Predicted in %f seconds.\n", input, FUNC14(FUNC0()-time));
        FUNC13(out, "out");
        FUNC16(out, "out", 1);
        FUNC16(crop, "crop", 0);

        FUNC5(im);
        FUNC5(resized);
        FUNC5(crop);
        if (filename) break;
    }
}