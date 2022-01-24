#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int bytestream_end; int bytestream; } ;
struct TYPE_8__ {int b_width; int b_height; scalar_t__ motion_est; int /*<<< orphan*/  avctx; TYPE_1__ c; int /*<<< orphan*/  keyframe; } ;
typedef  TYPE_2__ SnowContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FF_ME_ITER ; 
 int MB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(SnowContext *s, int search){
    int x, y;
    int w= s->b_width;
    int h= s->b_height;

    if(s->motion_est == FF_ME_ITER && !s->keyframe && search)
        FUNC3(s);

    for(y=0; y<h; y++){
        if(s->c.bytestream_end - s->c.bytestream < w*MB_SIZE*MB_SIZE*3){ //FIXME nicer limit
            FUNC0(s->avctx, AV_LOG_ERROR, "encoded frame too large\n");
            return;
        }
        for(x=0; x<w; x++){
            if(s->motion_est == FF_ME_ITER || !search)
                FUNC2(s, 0, x, y);
            else
                FUNC1 (s, 0, x, y);
        }
    }
}