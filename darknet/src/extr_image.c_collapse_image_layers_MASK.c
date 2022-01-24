#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int h; int c; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 TYPE_1__ FUNC2 (TYPE_1__,int) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int,int) ; 

image FUNC4(image source, int border)
{
    int h = source.h;
    h = (h+border)*source.c - border;
    image dest = FUNC3(source.w, h, 1);
    int i;
    for(i = 0; i < source.c; ++i){
        image layer = FUNC2(source, i);
        int h_offset = i*(source.h+border);
        FUNC0(layer, dest, 0, h_offset);
        FUNC1(layer);
    }
    return dest;
}