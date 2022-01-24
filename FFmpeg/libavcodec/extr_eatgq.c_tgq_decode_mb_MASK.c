#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  void* int8_t ;
struct TYPE_11__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_10__ {int /*<<< orphan*/  avctx; TYPE_6__ gb; int /*<<< orphan*/ * block; } ;
typedef  TYPE_1__ TgqContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,void**,int) ; 
 void* FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int,int,void**) ; 

__attribute__((used)) static int FUNC11(TgqContext *s, AVFrame *frame, int mb_y, int mb_x)
{
    int mode;
    int i;
    int8_t dc[6];

    mode = FUNC3(&s->gb);
    if (mode > 12) {
        GetBitContext gb;
        int ret = FUNC6(&gb, s->gb.buffer, FUNC0(FUNC4(&s->gb), mode));
        if (ret < 0)
            return ret;

        for (i = 0; i < 6; i++)
            FUNC8(s, s->block[i], &gb);
        FUNC9(s, s->block, frame, mb_x, mb_y);
        FUNC5(&s->gb, mode);
    } else {
        if (mode == 3) {
            FUNC7(dc, FUNC3(&s->gb), 4);
            dc[4] = FUNC3(&s->gb);
            dc[5] = FUNC3(&s->gb);
        } else if (mode == 6) {
            FUNC2(&s->gb, dc, 6);
        } else if (mode == 12) {
            for (i = 0; i < 6; i++) {
                dc[i] = FUNC3(&s->gb);
                FUNC5(&s->gb, 1);
            }
        } else {
            FUNC1(s->avctx, AV_LOG_ERROR, "unsupported mb mode %i\n", mode);
            return -1;
        }
        FUNC10(s, frame, mb_x, mb_y, dc);
    }
    return 0;
}