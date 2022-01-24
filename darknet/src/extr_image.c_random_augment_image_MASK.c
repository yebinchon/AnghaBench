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
typedef  int /*<<< orphan*/  image ;
struct TYPE_3__ {int /*<<< orphan*/  aspect; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  scale; int /*<<< orphan*/  rad; } ;
typedef  TYPE_1__ augment_args ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,float,float,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

image FUNC2(image im, float angle, float aspect, int low, int high, int w, int h)
{
    augment_args a = FUNC0(im, angle, aspect, low, high, w, h);
    image crop = FUNC1(im, a.rad, a.scale, a.w, a.h, a.dx, a.dy, a.aspect);
    return crop;
}