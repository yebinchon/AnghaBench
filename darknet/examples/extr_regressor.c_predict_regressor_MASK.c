#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_11__ {float* data; } ;
typedef  TYPE_2__ image ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 TYPE_2__ FUNC4 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC7 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 double FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 

void FUNC14(char *cfgfile, char *weightfile, char *filename)
{
    network *net = FUNC6(cfgfile, weightfile, 0);
    FUNC10(net, 1);
    FUNC11(2222222);

    clock_t time;
    char buff[256];
    char *input = buff;
    while(1){
        if(filename){
            FUNC12(input, filename, 256);
        }else{
            FUNC8("Enter Image Path: ");
            FUNC1(stdout);
            input = FUNC2(input, 256, stdin);
            if(!input) return;
            FUNC13(input, "\n");
        }
        image im = FUNC5(input, 0, 0);
        image sized = FUNC4(im, net->w, net->h);

        float *X = sized.data;
        time=FUNC0();
        float *predictions = FUNC7(net, X);
        FUNC8("Predicted: %f\n", predictions[0]);
        FUNC8("%s: Predicted in %f seconds.\n", input, FUNC9(FUNC0()-time));
        FUNC3(im);
        FUNC3(sized);
        if (filename) break;
    }
}