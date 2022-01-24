#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  outputs; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_17__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 int* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__ FUNC6 (TYPE_3__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 TYPE_3__ FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,char*,int) ; 
 char* FUNC12 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 TYPE_2__* FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (float*,int /*<<< orphan*/ ,int,int*) ; 
 double FUNC18 () ; 

void FUNC19(char *datacfg, char *cfgfile, char *weightfile)
{
    int i,j;
    network *net = FUNC9(cfgfile, weightfile, 0);
    FUNC15(FUNC16(0));

    list *options = FUNC14(datacfg);

    char *test_list = FUNC12(options, "test", "data/test.list");
    int top = FUNC11(options, "top", 1);

    list *plist = FUNC4(test_list);

    char **paths = (char **)FUNC7(plist);
    int m = plist->size;
    FUNC3(plist);
    int *indexes = FUNC0(top, sizeof(int));

    for(i = 0; i < m; ++i){
        double time = FUNC18();
        char *path = paths[i];
        image im = FUNC8(path, 0, 0);
        image r = FUNC6(im, net->w, net->h);
        float *predictions = FUNC10(net, r.data);
        if(net->hierarchy) FUNC5(predictions, net->outputs, net->hierarchy, 1, 1);
        FUNC17(predictions, net->outputs, top, indexes);

        FUNC13("%s", path);
        for(j = 0; j < top; ++j){
            FUNC13("\t%d", indexes[j]);
        }
        FUNC13("\n");

        FUNC2(im);
        FUNC2(r);

        FUNC1(stderr, "%lf seconds, %d images, %d total\n", FUNC18() - time, i+1, m);
    }
}