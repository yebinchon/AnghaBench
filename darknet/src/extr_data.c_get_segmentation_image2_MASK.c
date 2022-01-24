#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* data; } ;
typedef  TYPE_1__ image ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,int*,int) ; 
 TYPE_1__ FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,TYPE_1__,int) ; 
 int* FUNC10 (char*,int*,int /*<<< orphan*/ ) ; 

image FUNC11(char *path, int w, int h, int classes)
{
    char labelpath[4096];
    FUNC2(path, "images", "mask", labelpath);
    FUNC2(labelpath, "JPEGImages", "mask", labelpath);
    FUNC2(labelpath, ".jpg", ".txt", labelpath);
    FUNC2(labelpath, ".JPG", ".txt", labelpath);
    FUNC2(labelpath, ".JPEG", ".txt", labelpath);
    image mask = FUNC8(w, h, classes+1);
    int i;
    for(i = 0; i < w*h; ++i){
        mask.data[w*h*classes + i] = 1;
    }
    FILE *file = FUNC3(labelpath, "r");
    if(!file) FUNC1(labelpath);
    char buff[32788];
    int id;
    image part = FUNC8(w, h, 1);
    while(FUNC6(file, "%d %s", &id, buff) == 2){
        int n = 0;
        int *rle = FUNC10(buff, &n, 0);
        FUNC7(part, rle, n);
        FUNC9(part, mask, id);
        for(i = 0; i < w*h; ++i){
            if(part.data[i]) mask.data[w*h*classes + i] = 0;
        }
        FUNC4(rle);
    }
    //exclusive_image(mask);
    FUNC0(file);
    FUNC5(part);
    return mask;
}