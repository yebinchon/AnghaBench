#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int h; int w; int c; } ;
typedef  TYPE_1__ image ;

/* Variables and functions */
 TYPE_1__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,TYPE_1__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 TYPE_1__ FUNC3 (TYPE_1__,int) ; 
 TYPE_1__ FUNC4 (int,int,int) ; 

image FUNC5(image *ims, int n)
{
    int color = 1;
    int border = 1;
    int h,w,c;
    int size = ims[0].h;
    h = size;
    w = (ims[0].w + border) * n - border;
    c = ims[0].c;
    if(c != 3 || !color){
        h = (h+border)*c - border;
        c = 1;
    }

    image filters = FUNC4(w, h, c);
    int i,j;
    for(i = 0; i < n; ++i){
        int w_offset = i*(size+border);
        image copy = FUNC0(ims[i]);
        //normalize_image(copy);
        if(c == 3 && color){
            FUNC1(copy, filters, w_offset, 0);
        }
        else{
            for(j = 0; j < copy.c; ++j){
                int h_offset = j*(size+border);
                image layer = FUNC3(copy, j);
                FUNC1(layer, filters, w_offset, h_offset);
                FUNC2(layer);
            }
        }
        FUNC2(copy);
    }
    return filters;
}