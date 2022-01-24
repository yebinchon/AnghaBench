#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int outputs; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_12__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_13__ {float* data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 char** FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 TYPE_3__ FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC8 (TYPE_1__*,float*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC12 (char*,char*) ; 

void FUNC13(char *cfgfile, char *weightfile, char *filename)
{
    char **labels = FUNC3("/data/captcha/reimgs.labels.list");
    network *net = FUNC7(cfgfile, weightfile, 0);
    list *plist = FUNC4("/data/captcha/reimgs.fg.list");
    char **paths = (char **)FUNC5(plist);
    int N = plist->size;
    int outputs = net->outputs;

    FUNC10(net, 1);
    FUNC11(2222222);
    int i, j;
    for(i = 0; i < N; ++i){
        if (i%100 == 0) FUNC1(stderr, "%d\n", i);
        image im = FUNC6(paths[i], net->w, net->h);
        float *X = im.data;
        float *predictions = FUNC8(net, X);
        //printf("%s: Predicted in %f seconds.\n", input, sec(clock()-time));
        int truth = -1;
        for(j = 0; j < 13; ++j){
            if (FUNC12(paths[i], labels[j])) truth = j;
        }
        if (truth == -1){
            FUNC1(stderr, "bad: %s\n", paths[i]);
            return;
        }
        FUNC9("%d, ", truth);
        for(j = 0; j < outputs; ++j){
            if (j != 0) FUNC9(", ");
            FUNC9("%f", predictions[j]);
        }
        FUNC9("\n");
        FUNC0(stdout);
        FUNC2(im);
        if (filename) break;
    }
}