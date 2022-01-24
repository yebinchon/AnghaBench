#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int w; int h; } ;
typedef  TYPE_1__ network ;
struct TYPE_20__ {int size; } ;
typedef  TYPE_2__ list ;
struct TYPE_21__ {int w; int h; scalar_t__ data; } ;
typedef  TYPE_3__ image ;

/* Variables and functions */
 TYPE_3__ FUNC0 (TYPE_3__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 char** FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 TYPE_3__ FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (float*,int) ; 
 float* FUNC9 (TYPE_1__*,scalar_t__) ; 
 int FUNC10 (TYPE_2__*,char*,int) ; 
 char* FUNC11 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 TYPE_2__* FUNC13 (char*) ; 
 TYPE_3__ FUNC14 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void FUNC18(char *datacfg, char *filename, char *weightfile)
{
    int i;
    network *net = FUNC7(filename, weightfile, 0);
    FUNC15(net, 1);
    FUNC16(FUNC17(0));

    list *options = FUNC13(datacfg);

    char *label_list = FUNC11(options, "names", "data/labels.list");
    char *test_list = FUNC11(options, "test", "data/train.list");
    int classes = FUNC10(options, "classes", 2);

    char **labels = FUNC3(label_list);
    list *plist = FUNC4(test_list);

    char **paths = (char **)FUNC5(plist);
    int m = plist->size;
    FUNC2(plist);

    for(i = 0; i < m; ++i){
        image im = FUNC6(paths[i], 0, 0);
        image resized = FUNC14(im, net->w);
        image crop = FUNC0(resized, (resized.w - net->w)/2, (resized.h - net->h)/2, net->w, net->h);
        float *pred = FUNC9(net, crop.data);

        if(resized.data != im.data) FUNC1(resized);
        FUNC1(im);
        FUNC1(crop);
        int ind = FUNC8(pred, classes);

        FUNC12("%s\n", labels[ind]);
    }
}