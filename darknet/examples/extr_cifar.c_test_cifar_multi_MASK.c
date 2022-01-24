#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ image ;
struct TYPE_10__ {float** vals; } ;
struct TYPE_9__ {int rows; int /*<<< orphan*/ * vals; } ;
struct TYPE_12__ {TYPE_2__ y; TYPE_1__ X; } ;
typedef  TYPE_4__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,float*,int,float*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__) ; 
 TYPE_3__ FUNC2 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 TYPE_4__ FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (float*,int) ; 
 float* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(char *filename, char *weightfile)
{
    network *net = FUNC5(filename, weightfile, 0);
    FUNC9(net, 1);
    FUNC10(FUNC11(0));

    float avg_acc = 0;
    data test = FUNC4("data/cifar/cifar-10-batches-bin/test_batch.bin");

    int i;
    for(i = 0; i < test.X.rows; ++i){
        image im = FUNC2(32, 32, 3, test.X.vals[i]);

        float pred[10] = {0};

        float *p = FUNC7(net, im.data);
        FUNC0(10, 1, p, 1, pred, 1);
        FUNC1(im);
        p = FUNC7(net, im.data);
        FUNC0(10, 1, p, 1, pred, 1);

        int index = FUNC6(pred, 10);
        int class = FUNC6(test.y.vals[i], 10);
        if(index == class) avg_acc += 1;
        FUNC3(im);
        FUNC8("%4d: %.2f%%\n", i, 100.*avg_acc/(i+1));
    }
}