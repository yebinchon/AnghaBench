#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ data; scalar_t__ sl_end; scalar_t__ sl_begin; int /*<<< orphan*/  enc; } ;
struct TYPE_5__ {int rows; int cols; int /*<<< orphan*/  frame_size; TYPE_3__* encbuffer; TYPE_3__* keybuffer; TYPE_3__* key_blocks; TYPE_3__* current_frame; TYPE_3__* key_frame; int /*<<< orphan*/  blocks_size; TYPE_3__* frame_blocks; } ;
typedef  TYPE_1__ FlashSV2Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(FlashSV2Context * s)
{
    int i;
    FUNC0(s->key_blocks, s->frame_blocks, s->blocks_size);
    FUNC0(s->key_frame, s->current_frame, s->frame_size);

    for (i = 0; i < s->rows * s->cols; i++) {
        s->key_blocks[i].enc += (s->keybuffer - s->encbuffer);
        s->key_blocks[i].sl_begin = 0;
        s->key_blocks[i].sl_end   = 0;
        s->key_blocks[i].data     = 0;
    }
    FUNC0(s->keybuffer, s->encbuffer, s->frame_size);

    return 0;
}