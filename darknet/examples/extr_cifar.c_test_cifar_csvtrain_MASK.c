#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  network ;
typedef  int /*<<< orphan*/  matrix ;
typedef  int /*<<< orphan*/  image ;
struct TYPE_6__ {int rows; int /*<<< orphan*/ * vals; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; TYPE_1__ X; } ;
typedef  TYPE_2__ data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 TYPE_2__ FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 double FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(char *cfg, char *weights)
{
    network *net = FUNC5(cfg, weights, 0);
    FUNC11(FUNC12(0));

    data test = FUNC4();

    matrix pred = FUNC9(net, test);

    int i;
    for(i = 0; i < test.X.rows; ++i){
        image im = FUNC1(32, 32, 3, test.X.vals[i]);
        FUNC0(im);
    }
    matrix pred2 = FUNC9(net, test);
    FUNC10(pred, .5);
    FUNC10(pred2, .5);
    FUNC6(pred2, pred);

    FUNC7(pred);
    FUNC2(stderr, "Accuracy: %f\n", FUNC8(test.y, pred, 1));
    FUNC3(test);
}