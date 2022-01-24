#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int b_width; int b_height; int block_max_depth; int /*<<< orphan*/  block; TYPE_1__* avctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ SnowContext ;
typedef  int /*<<< orphan*/  BlockNode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  LOG2_MB_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(SnowContext *s){
    int w= FUNC1(s->avctx->width,  LOG2_MB_SIZE);
    int h= FUNC1(s->avctx->height, LOG2_MB_SIZE);

    s->b_width = w;
    s->b_height= h;

    FUNC2(s->block);
    s->block= FUNC3(w * h,  sizeof(BlockNode) << (s->block_max_depth*2));
    if (!s->block)
        return FUNC0(ENOMEM);

    return 0;
}