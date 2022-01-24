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

/* Variables and functions */
 char** dice_labels ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 TYPE_2__ FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 float* FUNC5 (TYPE_1__,float*) ; 
 TYPE_1__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__,int,int*) ; 

void FUNC13(char *cfgfile, char *weightfile, char *filename)
{
    network net = FUNC6(cfgfile);
    if(weightfile){
        FUNC4(&net, weightfile);
    }
    FUNC8(&net, 1);
    FUNC9(2222222);
    int i = 0;
    char **names = dice_labels;
    char buff[256];
    char *input = buff;
    int indexes[6];
    while(1){
        if(filename){
            FUNC10(input, filename, 256);
        }else{
            FUNC7("Enter Image Path: ");
            FUNC0(stdout);
            input = FUNC1(input, 256, stdin);
            if(!input) return;
            FUNC11(input, "\n");
        }
        image im = FUNC3(input, net.w, net.h);
        float *X = im.data;
        float *predictions = FUNC5(net, X);
        FUNC12(net, 6, indexes);
        for(i = 0; i < 6; ++i){
            int index = indexes[i];
            FUNC7("%s: %f\n", names[index], predictions[index]);
        }
        FUNC2(im);
        if (filename) break;
    }
}