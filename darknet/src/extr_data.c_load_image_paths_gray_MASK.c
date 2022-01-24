#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
typedef  TYPE_1__ matrix ;
struct TYPE_9__ {int h; int w; int c; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__) ; 
 TYPE_2__ FUNC2 (TYPE_2__) ; 
 TYPE_2__ FUNC3 (char*,int,int,int) ; 

matrix FUNC4(char **paths, int n, int w, int h)
{
    int i;
    matrix X;
    X.rows = n;
    X.vals = FUNC0(X.rows, sizeof(float*));
    X.cols = 0;

    for(i = 0; i < n; ++i){
        image im = FUNC3(paths[i], w, h, 3);

        image gray = FUNC2(im);
        FUNC1(im);
        im = gray;

        X.vals[i] = im.data;
        X.cols = im.h*im.w*im.c;
    }
    return X;
}