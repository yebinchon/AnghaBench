#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int h; int w; int /*<<< orphan*/  format; TYPE_4__* dst; } ;
struct TYPE_10__ {int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
struct TYPE_9__ {int mode; int /*<<< orphan*/  dctB; int /*<<< orphan*/  requantize; int /*<<< orphan*/  src; void* temp_stride; int /*<<< orphan*/  vsub; int /*<<< orphan*/  hsub; } ;
typedef  TYPE_1__ PP7Context ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int const) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dctB_c ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  hardthresh_c ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  mediumthresh_c ; 
 int /*<<< orphan*/  softthresh_c ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    PP7Context *pp7 = ctx->priv;
    const int h = FUNC1(inlink->h + 16, 16);
    const AVPixFmtDescriptor *desc = FUNC3(inlink->format);

    pp7->hsub = desc->log2_chroma_w;
    pp7->vsub = desc->log2_chroma_h;

    pp7->temp_stride = FUNC1(inlink->w + 16, 16);
    pp7->src = FUNC2(pp7->temp_stride,  (h + 8) * sizeof(uint8_t));

    if (!pp7->src)
        return FUNC0(ENOMEM);

    FUNC5(pp7);

    switch (pp7->mode) {
        case 0: pp7->requantize = hardthresh_c; break;
        case 1: pp7->requantize = softthresh_c; break;
        default:
        case 2: pp7->requantize = mediumthresh_c; break;
    }

    pp7->dctB = dctB_c;

    if (ARCH_X86)
        FUNC4(pp7);

    return 0;
}