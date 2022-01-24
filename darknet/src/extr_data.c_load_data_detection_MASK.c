#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {float w; float h; int /*<<< orphan*/  data; int /*<<< orphan*/  c; } ;
typedef  TYPE_2__ image ;
struct TYPE_17__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_14__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_16__ {TYPE_7__ y; TYPE_1__ X; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ data ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,double) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int,int,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 char** FUNC6 (char**,int,int) ; 
 TYPE_2__ FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__,float,float,float,float,TYPE_2__) ; 
 int FUNC11 () ; 
 float FUNC12 (float,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__,float,float,float) ; 

data FUNC14(int n, char **paths, int m, int w, int h, int boxes, int classes, float jitter, float hue, float saturation, float exposure)
{
    char **random_paths = FUNC6(paths, n, m);
    int i;
    data d = {0};
    d.shallow = 0;

    d.X.rows = n;
    d.X.vals = FUNC0(d.X.rows, sizeof(float*));
    d.X.cols = h*w*3;

    d.y = FUNC9(n, 5*boxes);
    for(i = 0; i < n; ++i){
        image orig = FUNC7(random_paths[i], 0, 0);
        image sized = FUNC8(w, h, orig.c);
        FUNC1(sized, .5);

        float dw = jitter * orig.w;
        float dh = jitter * orig.h;

        float new_ar = (orig.w + FUNC12(-dw, dw)) / (orig.h + FUNC12(-dh, dh));
        //float scale = rand_uniform(.25, 2);
        float scale = 1;

        float nw, nh;

        if(new_ar < 1){
            nh = scale * h;
            nw = nh * new_ar;
        } else {
            nw = scale * w;
            nh = nw / new_ar;
        }

        float dx = FUNC12(0, w - nw);
        float dy = FUNC12(0, h - nh);

        FUNC10(orig, nw, nh, dx, dy, sized);

        FUNC13(sized, hue, saturation, exposure);

        int flip = FUNC11()%2;
        if(flip) FUNC3(sized);
        d.X.vals[i] = sized.data;


        FUNC2(random_paths[i], boxes, d.y.vals[i], classes, flip, -dx/w, -dy/h, nw/w, nh/h);

        FUNC5(orig);
    }
    FUNC4(random_paths);
    return d;
}