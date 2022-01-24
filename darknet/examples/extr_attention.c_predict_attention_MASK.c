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
struct TYPE_10__ {int /*<<< orphan*/  outputs; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_11__ {float* data; } ;
typedef  TYPE_2__ image ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,double) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 char** FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__ FUNC8 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC11 (TYPE_1__*,float*) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/ * FUNC15 (char*) ; 
 double FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (float*,int /*<<< orphan*/ ,int,int*) ; 

void FUNC22(char *datacfg, char *cfgfile, char *weightfile, char *filename, int top)
{
    network *net = FUNC10(cfgfile, weightfile, 0);
    FUNC17(net, 1);
    FUNC18(2222222);

    list *options = FUNC15(datacfg);

    char *name_list = FUNC13(options, "names", 0);
    if(!name_list) name_list = FUNC13(options, "labels", "data/labels.list");
    if(top == 0) top = FUNC12(options, "top", 1);

    int i = 0;
    char **names = FUNC6(name_list);
    clock_t time;
    int *indexes = FUNC0(top, sizeof(int));
    char buff[256];
    char *input = buff;
    while(1){
        if(filename){
            FUNC19(input, filename, 256);
        }else{
            FUNC14("Enter Image Path: ");
            FUNC2(stdout);
            input = FUNC3(input, 256, stdin);
            if(!input) return;
            FUNC20(input, "\n");
        }
        image im = FUNC9(input, 0, 0);
        image r = FUNC8(im, net->w, net->h);
        //resize_network(&net, r.w, r.h);
        //printf("%d %d\n", r.w, r.h);

        float *X = r.data;
        time=FUNC1();
        float *predictions = FUNC11(net, X);
        if(net->hierarchy) FUNC7(predictions, net->outputs, net->hierarchy, 1, 1);
        FUNC21(predictions, net->outputs, top, indexes);
        FUNC4(stderr, "%s: Predicted in %f seconds.\n", input, FUNC16(FUNC1()-time));
        for(i = 0; i < top; ++i){
            int index = indexes[i];
            //if(net->hierarchy) printf("%d, %s: %f, parent: %s \n",index, names[index], predictions[index], (net->hierarchy->parent[index] >= 0) ? names[net->hierarchy->parent[index]] : "Root");
            //else printf("%s: %f\n",names[index], predictions[index]);
            FUNC14("%5.2f%%: %s\n", predictions[index]*100, names[index]);
        }
        if(r.data != im.data) FUNC5(r);
        FUNC5(im);
        if (filename) break;
    }
}