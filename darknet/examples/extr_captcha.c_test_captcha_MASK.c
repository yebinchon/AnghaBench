#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_10__ {float* data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 char** FUNC3 (char*) ; 
 TYPE_2__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC6 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int*) ; 

void FUNC13(char *cfgfile, char *weightfile, char *filename)
{
    network *net = FUNC5(cfgfile, weightfile, 0);
    FUNC8(net, 1);
    FUNC9(2222222);
    int i = 0;
    char **names = FUNC3("/data/captcha/reimgs.labels.list");
    char buff[256];
    char *input = buff;
    int indexes[26];
    while(1){
        if(filename){
            FUNC10(input, filename, 256);
        }else{
            //printf("Enter Image Path: ");
            //fflush(stdout);
            input = FUNC1(input, 256, stdin);
            if(!input) return;
            FUNC11(input, "\n");
        }
        image im = FUNC4(input, net->w, net->h);
        float *X = im.data;
        float *predictions = FUNC6(net, X);
        FUNC12(net, 26, indexes);
        //printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        for(i = 0; i < 26; ++i){
            int index = indexes[i];
            if(i != 0) FUNC7(", ");
            FUNC7("%s %f", names[index], predictions[index]);
        }
        FUNC7("\n");
        FUNC0(stdout);
        FUNC2(im);
        if (filename) break;
    }
}