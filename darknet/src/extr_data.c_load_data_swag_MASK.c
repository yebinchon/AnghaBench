#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int h; int w; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ image ;
struct TYPE_16__ {int /*<<< orphan*/ * vals; } ;
struct TYPE_13__ {int rows; int cols; int /*<<< orphan*/ * vals; } ;
struct TYPE_15__ {int w; int h; TYPE_6__ y; TYPE_1__ X; scalar_t__ shallow; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ data ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 TYPE_2__ FUNC1 (TYPE_2__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,float,float,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__) ; 
 TYPE_2__ FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ FUNC6 (int,int) ; 
 int FUNC7 () ; 
 int FUNC8 (int,int) ; 
 TYPE_2__ FUNC9 (TYPE_2__,int,int) ; 

data FUNC10(char **paths, int n, int classes, float jitter)
{
    int index = FUNC7()%n;
    char *random_path = paths[index];

    image orig = FUNC5(random_path, 0, 0);
    int h = orig.h;
    int w = orig.w;

    data d = {0};
    d.shallow = 0;
    d.w = w;
    d.h = h;

    d.X.rows = 1;
    d.X.vals = FUNC0(d.X.rows, sizeof(float*));
    d.X.cols = h*w*3;

    int k = (4+classes)*90;
    d.y = FUNC6(1, k);

    int dw = w*jitter;
    int dh = h*jitter;

    int pleft  = FUNC8(-dw, dw);
    int pright = FUNC8(-dw, dw);
    int ptop   = FUNC8(-dh, dh);
    int pbot   = FUNC8(-dh, dh);

    int swidth =  w - pleft - pright;
    int sheight = h - ptop - pbot;

    float sx = (float)swidth  / w;
    float sy = (float)sheight / h;

    int flip = FUNC7()%2;
    image cropped = FUNC1(orig, pleft, ptop, swidth, sheight);

    float dx = ((float)pleft/w)/sx;
    float dy = ((float)ptop /h)/sy;

    image sized = FUNC9(cropped, w, h);
    if(flip) FUNC3(sized);
    d.X.vals[0] = sized.data;

    FUNC2(random_path, d.y.vals[0], classes, flip, dx, dy, 1./sx, 1./sy);

    FUNC4(orig);
    FUNC4(cropped);

    return d;
}