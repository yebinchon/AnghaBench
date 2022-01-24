#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  image ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* FUNC10 (char*,int*,int /*<<< orphan*/ ) ; 

image FUNC11(char *path, int w, int h, int classes)
{
    char labelpath[4096];
    FUNC2(path, "images", "mask", labelpath);
    FUNC2(labelpath, "JPEGImages", "mask", labelpath);
    FUNC2(labelpath, ".jpg", ".txt", labelpath);
    FUNC2(labelpath, ".JPG", ".txt", labelpath);
    FUNC2(labelpath, ".JPEG", ".txt", labelpath);
    image mask = FUNC8(w, h, classes);
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
        FUNC4(rle);
    }
    //exclusive_image(mask);
    FUNC0(file);
    FUNC5(part);
    return mask;
}