#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ network ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__) ; 
 TYPE_2__ FUNC1 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

float *FUNC4(network *net, image im)
{
    image imr = FUNC1(im, net->w, net->h);
    FUNC3(net, 1);
    float *p = FUNC2(net, imr.data);
    FUNC0(imr);
    return p;
}