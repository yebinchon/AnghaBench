#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int id; float x; float y; float h; float w; float left; float right; float top; float bottom; } ;
typedef  TYPE_1__ box_label ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int*,float*,float*,float*,float*) ; 
 TYPE_1__* FUNC5 (TYPE_1__*,int) ; 

box_label *FUNC6(char *filename, int *n)
{
    FILE *file = FUNC3(filename, "r");
    if(!file) FUNC2(filename);
    float x, y, h, w;
    int id;
    int count = 0;
    int size = 64;
    box_label *boxes = FUNC0(size, sizeof(box_label));
    while(FUNC4(file, "%d %f %f %f %f", &id, &x, &y, &w, &h) == 5){
        if(count == size) {
            size = size * 2;
            boxes = FUNC5(boxes, size*sizeof(box_label));
        }
        boxes[count].id = id;
        boxes[count].x = x;
        boxes[count].y = y;
        boxes[count].h = h;
        boxes[count].w = w;
        boxes[count].left   = x - w/2;
        boxes[count].right  = x + w/2;
        boxes[count].top    = y - h/2;
        boxes[count].bottom = y + h/2;
        ++count;
    }
    FUNC1(file);
    *n = count;
    return boxes;
}