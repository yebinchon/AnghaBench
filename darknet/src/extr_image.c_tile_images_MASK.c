#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ w; scalar_t__ h; scalar_t__ c; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ FUNC4 (scalar_t__,scalar_t__,scalar_t__) ; 

image FUNC5(image a, image b, int dx)
{
    if(a.w == 0) return FUNC1(b);
    image c = FUNC4(a.w + b.w + dx, (a.h > b.h) ? a.h : b.h, (a.c > b.c) ? a.c : b.c);
    FUNC3(c.w*c.h*c.c, 1, c.data, 1);
    FUNC2(a, c, 0, 0); 
    FUNC0(b, c, a.w + dx, 0);
    return c;
}