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
struct TYPE_6__ {float x; float y; float w; float h; int id; } ;
typedef  TYPE_1__ box_label ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,float,float,float,float,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC4 (char*,int*) ; 

void FUNC5(char *path, float *truth, int classes, int flip, float dx, float dy, float sx, float sy)
{
    char labelpath[4096];
    FUNC1(path, "images", "labels", labelpath);
    FUNC1(labelpath, "JPEGImages", "labels", labelpath);
    FUNC1(labelpath, ".jpg", ".txt", labelpath);
    FUNC1(labelpath, ".JPG", ".txt", labelpath);
    FUNC1(labelpath, ".JPEG", ".txt", labelpath);

    int count = 0;
    box_label *boxes = FUNC4(labelpath, &count);
    FUNC3(boxes, count);
    FUNC0(boxes, count, dx, dy, sx, sy, flip);
    float x,y,w,h;
    int id;
    int i;

    for (i = 0; i < count && i < 90; ++i) {
        x =  boxes[i].x;
        y =  boxes[i].y;
        w =  boxes[i].w;
        h =  boxes[i].h;
        id = boxes[i].id;

        if (w < .0 || h < .0) continue;

        int index = (4+classes) * i;

        truth[index++] = x;
        truth[index++] = y;
        truth[index++] = w;
        truth[index++] = h;

        if (id < classes) truth[index+id] = 1;
    }
    FUNC2(boxes);
}