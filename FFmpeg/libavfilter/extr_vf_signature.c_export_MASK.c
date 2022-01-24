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
typedef  int /*<<< orphan*/  filename ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int nb_inputs; scalar_t__ format; int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  StreamContext ;
typedef  TYPE_1__ SignatureContext ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FORMAT_XML ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6(AVFilterContext *ctx, StreamContext *sc, int input)
{
    SignatureContext* sic = ctx->priv;
    char filename[1024];

    if (sic->nb_inputs > 1) {
        /* error already handled */
        FUNC1(FUNC2(filename, sizeof(filename), sic->filename, input) == 0);
    } else {
        if (FUNC3(filename, sic->filename, sizeof(filename)) >= sizeof(filename))
            return FUNC0(EINVAL);
    }
    if (sic->format == FORMAT_XML) {
        return FUNC5(ctx, sc, filename);
    } else {
        return FUNC4(ctx, sc, filename);
    }
}