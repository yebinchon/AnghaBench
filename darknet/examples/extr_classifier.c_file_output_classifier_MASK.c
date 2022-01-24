#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int w; int h; int /*<<< orphan*/  hierarchy; int /*<<< orphan*/  outputs; } ;
typedef  TYPE_1__ network ;
struct TYPE_19__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_20__ {int w; int h; scalar_t__ data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 TYPE_3__ FUNC0 (TYPE_3__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 TYPE_3__ FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 float* FUNC8 (TYPE_1__*,scalar_t__) ; 
 int FUNC9 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_2__* FUNC11 (char*) ; 
 TYPE_3__ FUNC12 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

void FUNC16(char *datacfg, char *filename, char *weightfile, char *listfile)
{
    int i,j;
    network *net = FUNC7(filename, weightfile, 0);
    FUNC13(net, 1);
    FUNC14(FUNC15(0));

    list *options = FUNC11(datacfg);

    //char *label_list = option_find_str(options, "names", "data/labels.list");
    int classes = FUNC9(options, "classes", 2);

    list *plist = FUNC3(listfile);

    char **paths = (char **)FUNC5(plist);
    int m = plist->size;
    FUNC2(plist);

    for(i = 0; i < m; ++i){
        image im = FUNC6(paths[i], 0, 0);
        image resized = FUNC12(im, net->w);
        image crop = FUNC0(resized, (resized.w - net->w)/2, (resized.h - net->h)/2, net->w, net->h);

        float *pred = FUNC8(net, crop.data);
        if(net->hierarchy) FUNC4(pred, net->outputs, net->hierarchy, 0, 1);

        if(resized.data != im.data) FUNC1(resized);
        FUNC1(im);
        FUNC1(crop);

        FUNC10("%s", paths[i]);
        for(j = 0; j < classes; ++j){
            FUNC10("\t%g", pred[j]);
        }
        FUNC10("\n");
    }
}