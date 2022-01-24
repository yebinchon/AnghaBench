#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int width; int height; } ;
typedef  TYPE_1__ SubBand ;
typedef  int /*<<< orphan*/  SnowContext ;
typedef  scalar_t__ IDWTELEM ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC1(SnowContext *s, SubBand *b, IDWTELEM *src, int stride, int inverse, int use_median){
    const int w= b->width;
    const int h= b->height;
    int x,y;

    for(y=0; y<h; y++){
        for(x=0; x<w; x++){
            int i= x + y*stride;

            if(x){
                if(use_median){
                    if(y && x+1<w) src[i] += FUNC0(src[i - 1], src[i - stride], src[i - stride + 1]);
                    else  src[i] += src[i - 1];
                }else{
                    if(y) src[i] += FUNC0(src[i - 1], src[i - stride], src[i - 1] + src[i - stride] - src[i - 1 - stride]);
                    else  src[i] += src[i - 1];
                }
            }else{
                if(y) src[i] += src[i - stride];
            }
        }
    }
}