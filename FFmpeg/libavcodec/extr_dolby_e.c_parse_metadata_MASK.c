#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t prog_conf; int nb_channels; int nb_programs; size_t fr_code; size_t fr_code_orig; int /*<<< orphan*/  avctx; int /*<<< orphan*/  gb; void** end_gain; void** begin_gain; void** rev_id; void* meter_size; void* mtd_ext_size; void** ch_size; } ;
typedef  TYPE_1__ DBEContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t MAX_PROG_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int* nb_channels_tab ; 
 int* nb_programs_tab ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/ * sample_rate_tab ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC9(DBEContext *s)
{
    int i, ret, key, mtd_size;

    if ((key = FUNC4(s)) < 0)
        return key;
    if ((ret = FUNC1(s, 1, key)) < 0)
        return ret;

    FUNC5(&s->gb, 4);
    mtd_size = FUNC2(&s->gb, 10);
    if (!mtd_size) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid metadata size\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC1(s, mtd_size, key)) < 0)
        return ret;

    FUNC5(&s->gb, 14);
    s->prog_conf = FUNC2(&s->gb, 6);
    if (s->prog_conf > MAX_PROG_CONF) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid program configuration\n");
        return AVERROR_INVALIDDATA;
    }

    s->nb_channels = nb_channels_tab[s->prog_conf];
    s->nb_programs = nb_programs_tab[s->prog_conf];

    s->fr_code      = FUNC2(&s->gb, 4);
    s->fr_code_orig = FUNC2(&s->gb, 4);
    if (!sample_rate_tab[s->fr_code] ||
        !sample_rate_tab[s->fr_code_orig]) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Invalid frame rate code\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC7(&s->gb, 88);
    for (i = 0; i < s->nb_channels; i++)
        s->ch_size[i] = FUNC2(&s->gb, 10);
    s->mtd_ext_size = FUNC2(&s->gb, 8);
    s->meter_size   = FUNC2(&s->gb, 8);

    FUNC7(&s->gb, 10 * s->nb_programs);
    for (i = 0; i < s->nb_channels; i++) {
        s->rev_id[i]     = FUNC2(&s->gb,  4);
        FUNC6(&s->gb);
        s->begin_gain[i] = FUNC2(&s->gb, 10);
        s->end_gain[i]   = FUNC2(&s->gb, 10);
    }

    if (FUNC3(&s->gb) < 0) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Read past end of metadata\n");
        return AVERROR_INVALIDDATA;
    }

    return FUNC8(s, mtd_size + 1);
}