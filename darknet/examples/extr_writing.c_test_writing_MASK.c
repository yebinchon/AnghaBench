#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
struct TYPE_10__ {int w; int h; int c; float* data; } ;
typedef  TYPE_1__ image ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 TYPE_1__ FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 TYPE_1__ FUNC12 (TYPE_1__,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 double FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__,char*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 TYPE_1__ FUNC20 (TYPE_1__,double) ; 

void FUNC21(char *cfgfile, char *weightfile, char *filename)
{
    network net = FUNC10(cfgfile);
    if(weightfile){
        FUNC8(&net, weightfile);
    }
    FUNC15(&net, 1);
    FUNC17(2222222);
    clock_t time;
    char buff[256];
    char *input = buff;
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

        image im = FUNC7(input, 0, 0);
        FUNC13(&net, im.w, im.h);
        FUNC11("%d %d %d\n", im.h, im.w, im.c);
        float *X = im.data;
        time=FUNC0();
        FUNC9(net, X);
        FUNC11("%s: Predicted in %f seconds.\n", input, FUNC14(FUNC0()-time));
        image pred = FUNC6(net);

        image upsampled = FUNC12(pred, im.w, im.h);
        image thresh = FUNC20(upsampled, .5);
        pred = thresh;

        FUNC16(pred, "prediction");
        FUNC16(im, "orig");
#ifdef OPENCV
        cvWaitKey(0);
        cvDestroyAllWindows();
#endif

        FUNC5(upsampled);
        FUNC5(thresh);
        FUNC5(im);
        if (filename) break;
    }
}