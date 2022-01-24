#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {float* data; } ;
typedef  TYPE_1__ image ;
struct TYPE_13__ {int /*<<< orphan*/  aspect; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  scale; int /*<<< orphan*/  rad; } ;
typedef  TYPE_2__ augment_args ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__,int*,int) ; 
 TYPE_1__ FUNC9 (int,int,int) ; 
 int* FUNC10 (char*,int*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC11 (TYPE_1__,int,int) ; 
 TYPE_1__ FUNC12 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(char *path, int num_boxes, float *truth, int classes, int w, int h, augment_args aug, int flip, int mw, int mh)
{
    char labelpath[4096];
    FUNC2(path, "images", "mask", labelpath);
    FUNC2(labelpath, "JPEGImages", "mask", labelpath);
    FUNC2(labelpath, ".jpg", ".txt", labelpath);
    FUNC2(labelpath, ".JPG", ".txt", labelpath);
    FUNC2(labelpath, ".JPEG", ".txt", labelpath);
    FILE *file = FUNC4(labelpath, "r");
    if(!file) FUNC1(labelpath);
    char buff[32788];
    int id;
    int i = 0;
    int j;
    image part = FUNC9(w, h, 1);
    while((FUNC7(file, "%d %s", &id, buff) == 2) && i < num_boxes){
        int n = 0;
        int *rle = FUNC10(buff, &n, 0);
        FUNC8(part, rle, n);
        image sized = FUNC12(part, aug.rad, aug.scale, aug.w, aug.h, aug.dx, aug.dy, aug.aspect);
        if(flip) FUNC3(sized);

        image mask = FUNC11(sized, mw, mh);
        truth[i*(mw*mh+1)] = id;
        for(j = 0; j < mw*mh; ++j){
            truth[i*(mw*mh + 1) + 1 + j] = mask.data[j];
        }
        ++i;

        FUNC6(mask);
        FUNC6(sized);
        FUNC5(rle);
    }
    if(i < num_boxes) truth[i*(mw*mh+1)] = -1;
    FUNC0(file);
    FUNC6(part);
}