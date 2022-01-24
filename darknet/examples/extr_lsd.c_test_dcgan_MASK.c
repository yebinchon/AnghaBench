#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int n; int /*<<< orphan*/  c; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_14__ {int w; int h; int c; float* data; } ;
typedef  TYPE_2__ image ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 TYPE_2__ FUNC2 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,double) ; 
 float FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,char*) ; 
 double FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

void FUNC14(char *cfgfile, char *weightfile)
{
    network *net = FUNC3(cfgfile, weightfile, 0);
    FUNC11(net, 1);
    FUNC13(2222222);

    clock_t time;
    char buff[256];
    char *input = buff;
    int imlayer = 0;

    imlayer = net->n-1;

    while(1){
        image im = FUNC4(net->w, net->h, net->c);
        int i;
        for(i = 0; i < im.w*im.h*im.c; ++i){
            im.data[i] = FUNC8();
        }
        //float mag = mag_array(im.data, im.w*im.h*im.c);
        //scale_array(im.data, im.w*im.h*im.c, 1./mag);

        float *X = im.data;
        time=FUNC0();
        FUNC5(net, X);
        image out = FUNC2(net, imlayer);
        //yuv_to_rgb(out);
        FUNC6(out);
        FUNC7("%s: Predicted in %f seconds.\n", input, FUNC10(FUNC0()-time));
        FUNC9(out, "out");
        FUNC12(out, "out", 0);

        FUNC1(im);
    }
}