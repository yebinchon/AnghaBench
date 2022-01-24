#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int out_h; int out_w; int c; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ maxpool_layer ;
typedef  int /*<<< orphan*/  image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int /*<<< orphan*/ ) ; 

image FUNC1(maxpool_layer l)
{
    int h = l.out_h;
    int w = l.out_w;
    int c = l.c;
    return FUNC0(w,h,c,l.output);
}