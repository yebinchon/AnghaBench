#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int rows; int cols; } ;
typedef  TYPE_1__ matrix ;
struct TYPE_9__ {int /*<<< orphan*/  y; } ;
typedef  TYPE_2__ data ;

/* Variables and functions */
 TYPE_1__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,double,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 TYPE_2__ FUNC4 (char*) ; 
 double FUNC5 (int /*<<< orphan*/ ,TYPE_1__,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6()
{
    data test = FUNC4("data/cifar/cifar-10-batches-bin/test_batch.bin");

    matrix pred = FUNC0("results/combined.csv");
    FUNC1(stderr, "%f %d\n", pred.rows, pred.cols);

    FUNC1(stderr, "Accuracy: %f\n", FUNC5(test.y, pred, 1));
    FUNC2(test);
    FUNC3(pred);
}