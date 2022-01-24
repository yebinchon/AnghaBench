#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int const nb_inputs; TYPE_1__* priv; } ;
struct TYPE_5__ {int nb_inputs; int* map; int nb_map; } ;
typedef  TYPE_1__ StreamSelectContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, const char *map)
{
    StreamSelectContext *s = ctx->priv;
    int *new_map;
    int new_nb_map = 0;

    if (!map) {
        FUNC4(ctx, AV_LOG_ERROR, "mapping definition is not set\n");
        return FUNC0(EINVAL);
    }

    new_map = FUNC1(s->nb_inputs, sizeof(*new_map));
    if (!new_map)
        return FUNC0(ENOMEM);

    while (1) {
        char *p;
        const int n = FUNC5(map, &p, 0);

        FUNC4(ctx, AV_LOG_DEBUG, "n=%d map=%p p=%p\n", n, map, p);

        if (map == p)
            break;
        map = p;

        if (new_nb_map >= s->nb_inputs) {
            FUNC4(ctx, AV_LOG_ERROR, "Unable to map more than the %d "
                   "input pads available\n", s->nb_inputs);
            FUNC2(new_map);
            return FUNC0(EINVAL);
        }

        if (n < 0 || n >= ctx->nb_inputs) {
            FUNC4(ctx, AV_LOG_ERROR, "Input stream index %d doesn't exist "
                   "(there is only %d input streams defined)\n",
                   n, s->nb_inputs);
            FUNC2(new_map);
            return FUNC0(EINVAL);
        }

        FUNC4(ctx, AV_LOG_VERBOSE, "Map input stream %d to output stream %d\n", n, new_nb_map);
        new_map[new_nb_map++] = n;
    }

    if (!new_nb_map) {
        FUNC4(ctx, AV_LOG_ERROR, "invalid mapping\n");
        FUNC2(new_map);
        return FUNC0(EINVAL);
    }

    FUNC3(&s->map);
    s->map = new_map;
    s->nb_map = new_nb_map;

    FUNC4(ctx, AV_LOG_VERBOSE, "%d map set\n", s->nb_map);

    return 0;
}