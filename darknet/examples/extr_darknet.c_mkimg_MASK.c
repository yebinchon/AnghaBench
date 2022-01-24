#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_11__* layers; } ;
typedef  TYPE_1__ network ;
struct TYPE_18__ {int w; int h; } ;
typedef  TYPE_2__ image ;
struct TYPE_16__ {int n; } ;

/* Variables and functions */
 TYPE_2__ FUNC0 (TYPE_2__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,double) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__) ; 
 TYPE_2__* FUNC3 (TYPE_11__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__,TYPE_2__,int,int) ; 
 TYPE_1__* FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC6 (int,int,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__,int,double,double) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,int) ; 

void FUNC12(char *cfgfile, char *weightfile, int h, int w, int num, char *prefix)
{
    network *net = FUNC5(cfgfile, weightfile, 0);
    image *ims = FUNC3(net->layers[0]);
    int n = net->layers[0].n;
    int z;
    for(z = 0; z < num; ++z){
        image im = FUNC6(h, w, 3);
        FUNC1(im, .5);
        int i;
        for(i = 0; i < 100; ++i){
            image r = FUNC0(ims[FUNC7()%n]);
            FUNC9(r, FUNC7()%4);
            FUNC8(r, 1, 1.5, 1.5);
            int dx = FUNC7()%(w-r.w);
            int dy = FUNC7()%(h-r.h);
            FUNC4(r, im, dx, dy);
            FUNC2(r);
        }
        char buff[256];
        FUNC11(buff, "%s/gen_%d", prefix, z);
        FUNC10(im, buff);
        FUNC2(im);
    }
}