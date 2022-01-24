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
struct TYPE_10__ {int size; } ;
typedef  TYPE_2__ list ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 char** dice_labels ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int,int /*<<< orphan*/ ,char**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 float* FUNC6 (TYPE_1__,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,float,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(char *filename, char *weightfile)
{
    network net = FUNC7(filename);
    if(weightfile){
        FUNC5(&net, weightfile);
    }
    FUNC9(FUNC10(0));

    char **labels = dice_labels;
    list *plist = FUNC2("data/dice/dice.val.list");

    char **paths = (char **)FUNC3(plist);
    int m = plist->size;
    FUNC1(plist);

    data val = FUNC4(paths, m, 0, labels, 6, net.w, net.h);
    float *acc = FUNC6(net, val, 2);
    FUNC8("Validation Accuracy: %f, %d images\n", acc[0], m);
    FUNC0(val);
}