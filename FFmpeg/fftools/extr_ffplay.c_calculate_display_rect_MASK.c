#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  num; int /*<<< orphan*/  den; } ;
struct TYPE_11__ {int x; int y; void* h; void* w; } ;
typedef  TYPE_1__ SDL_Rect ;
typedef  TYPE_2__ AVRational ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (TYPE_2__,TYPE_2__) ; 
 TYPE_2__ FUNC2 (int,int) ; 
 TYPE_2__ FUNC3 (TYPE_2__,TYPE_2__) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(SDL_Rect *rect,
                                   int scr_xleft, int scr_ytop, int scr_width, int scr_height,
                                   int pic_width, int pic_height, AVRational pic_sar)
{
    AVRational aspect_ratio = pic_sar;
    int64_t width, height, x, y;

    if (FUNC1(aspect_ratio, FUNC2(0, 1)) <= 0)
        aspect_ratio = FUNC2(1, 1);

    aspect_ratio = FUNC3(aspect_ratio, FUNC2(pic_width, pic_height));

    /* XXX: we suppose the screen has a 1.0 pixel ratio */
    height = scr_height;
    width = FUNC4(height, aspect_ratio.num, aspect_ratio.den) & ~1;
    if (width > scr_width) {
        width = scr_width;
        height = FUNC4(width, aspect_ratio.den, aspect_ratio.num) & ~1;
    }
    x = (scr_width - width) / 2;
    y = (scr_height - height) / 2;
    rect->x = scr_xleft + x;
    rect->y = scr_ytop  + y;
    rect->w = FUNC0((int)width,  1);
    rect->h = FUNC0((int)height, 1);
}