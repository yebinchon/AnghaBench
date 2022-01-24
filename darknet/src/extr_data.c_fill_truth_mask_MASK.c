#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int w; int h; float* data; } ;
typedef  TYPE_1__ image ;
struct TYPE_18__ {int w; int x; int y; int h; } ;
typedef  TYPE_2__ box ;
struct TYPE_19__ {int /*<<< orphan*/  aspect; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  scale; int /*<<< orphan*/  rad; } ;
typedef  TYPE_3__ augment_args ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_2__ FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,int*,int) ; 
 TYPE_1__ FUNC11 (int,int,int) ; 
 int* FUNC12 (char*,int*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC13 (TYPE_1__,int,int) ; 
 TYPE_1__ FUNC14 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC15(char *path, int num_boxes, float *truth, int classes, int w, int h, augment_args aug, int flip, int mw, int mh)
{
    char labelpath[4096];
    FUNC4(path, "images", "mask", labelpath);
    FUNC4(labelpath, "JPEGImages", "mask", labelpath);
    FUNC4(labelpath, ".jpg", ".txt", labelpath);
    FUNC4(labelpath, ".JPG", ".txt", labelpath);
    FUNC4(labelpath, ".JPEG", ".txt", labelpath);
    FILE *file = FUNC6(labelpath, "r");
    if(!file) FUNC3(labelpath);
    char buff[32788];
    int id;
    int i = 0;
    image part = FUNC11(w, h, 1);
    while((FUNC9(file, "%d %s", &id, buff) == 2) && i < num_boxes){
        int n = 0;
        int *rle = FUNC12(buff, &n, 0);
        FUNC10(part, rle, n);
        image sized = FUNC14(part, aug.rad, aug.scale, aug.w, aug.h, aug.dx, aug.dy, aug.aspect);
        if(flip) FUNC5(sized);
        box b = FUNC0(sized);
        if(b.w > 0){
            image crop = FUNC1(sized, b.x, b.y, b.w, b.h);
            image mask = FUNC13(crop, mw, mh);
            truth[i*(4 + mw*mh + 1) + 0] = (b.x + b.w/2.)/sized.w;
            truth[i*(4 + mw*mh + 1) + 1] = (b.y + b.h/2.)/sized.h;
            truth[i*(4 + mw*mh + 1) + 2] = b.w/sized.w;
            truth[i*(4 + mw*mh + 1) + 3] = b.h/sized.h;
            int j;
            for(j = 0; j < mw*mh; ++j){
                truth[i*(4 + mw*mh + 1) + 4 + j] = mask.data[j];
            }
            truth[i*(4 + mw*mh + 1) + 4 + mw*mh] = id;
            FUNC8(crop);
            FUNC8(mask);
            ++i;
        }
        FUNC8(sized);
        FUNC7(rle);
    }
    FUNC2(file);
    FUNC8(part);
}