#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  image ;
struct TYPE_5__ {int /*<<< orphan*/  n; } ;
typedef  TYPE_1__ convolutional_layer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 

image *FUNC6(convolutional_layer l, char *window, image *prev_weights)
{
    image *single_weights = FUNC3(l);
    FUNC4(single_weights, l.n, window);

    image delta = FUNC2(l);
    image dc = FUNC0(delta, 1);
    char buff[256];
    FUNC5(buff, "%s: Output", window);
    //show_image(dc, buff);
    //save_image(dc, buff);
    FUNC1(dc);
    return single_weights;
}