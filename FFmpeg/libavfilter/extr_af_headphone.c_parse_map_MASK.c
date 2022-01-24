#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int lfe_channel; int nb_inputs; int* mapping; size_t nb_irs; scalar_t__ hrir_fmt; int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ HeadphoneContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ HRIR_MULTI ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (TYPE_1__*,size_t,char**,int*,char*) ; 

__attribute__((used)) static void FUNC5(AVFilterContext *ctx)
{
    HeadphoneContext *s = ctx->priv;
    char *arg, *tokenizer, *p, *args = FUNC2(s->map);
    int i;

    if (!args)
        return;
    p = args;

    s->lfe_channel = -1;
    s->nb_inputs = 1;

    for (i = 0; i < 64; i++) {
        s->mapping[i] = -1;
    }

    while ((arg = FUNC3(p, "|", &tokenizer))) {
        int out_ch_id;
        char buf[8];

        p = NULL;
        if (FUNC4(s, s->nb_irs, &arg, &out_ch_id, buf)) {
            FUNC1(ctx, AV_LOG_WARNING, "Failed to parse \'%s\' as channel name.\n", buf);
            continue;
        }
        s->mapping[s->nb_irs] = out_ch_id;
        s->nb_irs++;
    }

    if (s->hrir_fmt == HRIR_MULTI)
        s->nb_inputs = 2;
    else
        s->nb_inputs = s->nb_irs + 1;

    FUNC0(args);
}