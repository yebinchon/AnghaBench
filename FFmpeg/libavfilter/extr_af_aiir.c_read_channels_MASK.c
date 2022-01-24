#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_8__ {size_t format; TYPE_1__* iir; } ;
struct TYPE_7__ {int* nb_ab; void** ab; void** cache; } ;
typedef  TYPE_1__ IIRChannel ;
typedef  TYPE_2__ AudioIIRContext ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int*) ; 
 int /*<<< orphan*/ * format ; 
 int FUNC6 (TYPE_3__*,char*,int,void*) ; 
 int FUNC7 (TYPE_3__*,char*,int,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFilterContext *ctx, int channels, uint8_t *item_str, int ab)
{
    AudioIIRContext *s = ctx->priv;
    char *p, *arg, *old_str, *prev_arg = NULL, *saveptr = NULL;
    int i, ret;

    p = old_str = FUNC3(item_str);
    if (!p)
        return FUNC0(ENOMEM);
    for (i = 0; i < channels; i++) {
        IIRChannel *iir = &s->iir[i];

        if (!(arg = FUNC4(p, "|", &saveptr)))
            arg = prev_arg;

        if (!arg) {
            FUNC2(&old_str);
            return FUNC0(EINVAL);
        }

        FUNC5(arg, &iir->nb_ab[ab]);

        p = NULL;
        iir->cache[ab] = FUNC1(iir->nb_ab[ab] + 1, sizeof(double));
        iir->ab[ab] = FUNC1(iir->nb_ab[ab] * (!!s->format + 1), sizeof(double));
        if (!iir->ab[ab] || !iir->cache[ab]) {
            FUNC2(&old_str);
            return FUNC0(ENOMEM);
        }

        if (s->format) {
            ret = FUNC7(ctx, arg, iir->nb_ab[ab], iir->ab[ab], format[s->format]);
        } else {
            ret = FUNC6(ctx, arg, iir->nb_ab[ab], iir->ab[ab]);
        }
        if (ret < 0) {
            FUNC2(&old_str);
            return ret;
        }
        prev_arg = arg;
    }

    FUNC2(&old_str);

    return 0;
}