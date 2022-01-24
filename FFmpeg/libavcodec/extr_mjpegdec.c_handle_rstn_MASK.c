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
struct TYPE_5__ {scalar_t__ restart_count; int* last_dc; int bits; int /*<<< orphan*/  gb; TYPE_1__* avctx; scalar_t__ restart_interval; } ;
struct TYPE_4__ {scalar_t__ codec_id; } ;
typedef  TYPE_2__ MJpegDecodeContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_THP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(MJpegDecodeContext *s, int nb_components)
{
    int i;
    int reset = 0;

    if (s->restart_interval) {
        s->restart_count--;
        if(s->restart_count == 0 && s->avctx->codec_id == AV_CODEC_ID_THP){
            FUNC0(&s->gb);
            for (i = 0; i < nb_components; i++) /* reset dc */
                s->last_dc[i] = (4 << s->bits);
        }

        i = 8 + ((-FUNC2(&s->gb)) & 7);
        /* skip RSTn */
        if (s->restart_count == 0) {
            if(   FUNC4(&s->gb, i) == (1 << i) - 1
               || FUNC4(&s->gb, i) == 0xFF) {
                int pos = FUNC2(&s->gb);
                FUNC0(&s->gb);
                while (FUNC3(&s->gb) >= 8 && FUNC4(&s->gb, 8) == 0xFF)
                    FUNC5(&s->gb, 8);
                if (FUNC3(&s->gb) >= 8 && (FUNC1(&s->gb, 8) & 0xF8) == 0xD0) {
                    for (i = 0; i < nb_components; i++) /* reset dc */
                        s->last_dc[i] = (4 << s->bits);
                    reset = 1;
                } else
                    FUNC6(&s->gb, pos - FUNC2(&s->gb));
            }
        }
    }
    return reset;
}