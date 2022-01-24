#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  image ;
struct TYPE_4__ {int n; } ;
typedef  TYPE_1__ convolutional_layer ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

image *FUNC4(convolutional_layer l)
{
    image *weights = FUNC0(l.n, sizeof(image));
    int i;
    for(i = 0; i < l.n; ++i){
        weights[i] = FUNC1(FUNC2(l, i));
        FUNC3(weights[i]);
        /*
           char buff[256];
           sprintf(buff, "filter%d", i);
           save_image(weights[i], buff);
         */
    }
    //error("hey");
    return weights;
}