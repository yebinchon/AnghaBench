#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ ** vals; } ;
typedef  TYPE_1__ matrix ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC4 (int,int) ; 

matrix FUNC5(char **paths, int n, int k)
{
    matrix y = FUNC4(n, k);
    int i,j;
    for(i = 0; i < n; ++i){
        char labelpath[4096];
        FUNC1(paths[i], "images", "labels", labelpath);
        FUNC1(labelpath, "JPEGImages", "labels", labelpath);
        FUNC1(labelpath, ".BMP", ".txt", labelpath);
        FUNC1(labelpath, ".JPEG", ".txt", labelpath);
        FUNC1(labelpath, ".JPG", ".txt", labelpath);
        FUNC1(labelpath, ".JPeG", ".txt", labelpath);
        FUNC1(labelpath, ".Jpeg", ".txt", labelpath);
        FUNC1(labelpath, ".PNG", ".txt", labelpath);
        FUNC1(labelpath, ".TIF", ".txt", labelpath);
        FUNC1(labelpath, ".bmp", ".txt", labelpath);
        FUNC1(labelpath, ".jpeg", ".txt", labelpath);
        FUNC1(labelpath, ".jpg", ".txt", labelpath);
        FUNC1(labelpath, ".png", ".txt", labelpath);
        FUNC1(labelpath, ".tif", ".txt", labelpath);

        FILE *file = FUNC2(labelpath, "r");
        for(j = 0; j < k; ++j){
            FUNC3(file, "%f", &(y.vals[i][j]));
        }
        FUNC0(file);
    }
    return y;
}