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
struct TYPE_15__ {int h; int w; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;
struct TYPE_17__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_14__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_16__ {TYPE_7__ y; TYPE_1__ X; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ data ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 TYPE_2__ FUNC1 (TYPE_2__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int,float,float,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__) ; 
 char** FUNC6 (char**,int,int) ; 
 TYPE_2__ FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC8 (int,int) ; 
 int FUNC9 () ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__,float,float,float) ; 
 TYPE_2__ FUNC12 (TYPE_2__,int,int) ; 

data FUNC13(int n, char **paths, int m, int w, int h, int size, int classes, float jitter, float hue, float saturation, float exposure)
{
    char **random_paths = FUNC6(paths, n, m);
    int i;
    data d = {0};
    d.shallow = 0;

    d.X.rows = n;
    d.X.vals = FUNC0(d.X.rows, sizeof(float*));
    d.X.cols = h*w*3;


    int k = size*size*(5+classes);
    d.y = FUNC8(n, k);
    for(i = 0; i < n; ++i){
        image orig = FUNC7(random_paths[i], 0, 0);

        int oh = orig.h;
        int ow = orig.w;

        int dw = (ow*jitter);
        int dh = (oh*jitter);

        int pleft  = FUNC10(-dw, dw);
        int pright = FUNC10(-dw, dw);
        int ptop   = FUNC10(-dh, dh);
        int pbot   = FUNC10(-dh, dh);

        int swidth =  ow - pleft - pright;
        int sheight = oh - ptop - pbot;

        float sx = (float)swidth  / ow;
        float sy = (float)sheight / oh;

        int flip = FUNC9()%2;
        image cropped = FUNC1(orig, pleft, ptop, swidth, sheight);

        float dx = ((float)pleft/ow)/sx;
        float dy = ((float)ptop /oh)/sy;

        image sized = FUNC12(cropped, w, h);
        if(flip) FUNC3(sized);
        FUNC11(sized, hue, saturation, exposure);
        d.X.vals[i] = sized.data;

        FUNC2(random_paths[i], d.y.vals[i], classes, size, flip, dx, dy, 1./sx, 1./sy);

        FUNC5(orig);
        FUNC5(cropped);
    }
    FUNC4(random_paths);
    return d;
}