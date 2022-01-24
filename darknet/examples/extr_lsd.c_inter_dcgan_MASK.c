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
struct TYPE_18__ {int n; int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_1__* layers; } ;
typedef  TYPE_2__ network ;
struct TYPE_19__ {float* data; int w; int h; int c; } ;
typedef  TYPE_3__ image ;
typedef  scalar_t__ clock_t ;
struct TYPE_17__ {int out_c; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 TYPE_3__ FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 TYPE_3__ FUNC3 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,float*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_3__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__,char*) ; 
 double FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (float*,float*,float,int,float*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

void FUNC17(char *cfgfile, char *weightfile)
{
    network *net = FUNC4(cfgfile, weightfile, 0);
    FUNC12(net, 1);
    FUNC16(2222222);

    clock_t time;
    char buff[256];
    char *input = buff;
    int i, imlayer = 0;

    for (i = 0; i < net->n; ++i) {
        if (net->layers[i].out_c == 3) {
            imlayer = i;
            FUNC8("%d\n", i);
            break;
        }
    }
    image start = FUNC9(net->w, net->h, net->c);
    image end = FUNC9(net->w, net->h, net->c);
        image im = FUNC5(net->w, net->h, net->c);
        image orig = FUNC1(start);

    int c = 0;
    int count = 0;
    int max_count = 15;
    while(1){
        ++c;
        
        if(count == max_count){
            count = 0;
            FUNC2(start);
            start = end;
            end = FUNC9(net->w, net->h, net->c);
            if(c > 300){
                end = orig;
            }
            if(c>300 + max_count) return;
        }
        ++count;

        FUNC14(start.data, end.data, (float)count / max_count, im.w*im.h*im.c, im.data);

        float *X = im.data;
        time=FUNC0();
        FUNC6(net, X);
        image out = FUNC3(net, imlayer);
        //yuv_to_rgb(out);
        FUNC7(out);
        FUNC8("%s: Predicted in %f seconds.\n", input, FUNC11(FUNC0()-time));
        //char buff[256];
        FUNC15(buff, "out%05d", c);
        FUNC10(out, "out");
        FUNC10(out, buff);
        FUNC13(out, "out", 0);
    }
}