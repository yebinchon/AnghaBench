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
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  guid; } ;
struct TYPE_7__ {int /*<<< orphan*/  presetGUID; } ;
struct TYPE_8__ {size_t preset; int /*<<< orphan*/  flags; TYPE_1__ init_encode_params; } ;
typedef  TYPE_2__ NvencContext ;
typedef  TYPE_3__ GUIDTuple ;

/* Variables and functions */
 int /*<<< orphan*/  BD ; 
 int /*<<< orphan*/  DEFAULT ; 
 int /*<<< orphan*/  FAST ; 
 int /*<<< orphan*/  HP ; 
 int /*<<< orphan*/  HQ ; 
 int /*<<< orphan*/  LOSSLESS_DEFAULT ; 
 int /*<<< orphan*/  LOSSLESS_HP ; 
 int /*<<< orphan*/  LOW_LATENCY_DEFAULT ; 
 int /*<<< orphan*/  LOW_LATENCY_HP ; 
 int /*<<< orphan*/  LOW_LATENCY_HQ ; 
 int /*<<< orphan*/  MEDIUM ; 
 int /*<<< orphan*/  NVENC_LOSSLESS ; 
 int /*<<< orphan*/  NVENC_LOWLATENCY ; 
 int /*<<< orphan*/  NVENC_ONE_PASS ; 
 int /*<<< orphan*/  NVENC_TWO_PASSES ; 
 TYPE_3__ FUNC0 (int /*<<< orphan*/ ,...) ; 
 TYPE_3__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLOW ; 

__attribute__((used)) static void FUNC2(NvencContext *ctx)
{
    GUIDTuple presets[] = {
        FUNC0(DEFAULT),
        FUNC0(HP),
        FUNC0(HQ),
        FUNC0(BD),
        FUNC1(SLOW,   HQ,    NVENC_TWO_PASSES),
        FUNC1(MEDIUM, HQ,    NVENC_ONE_PASS),
        FUNC1(FAST,   HP,    NVENC_ONE_PASS),
        FUNC0(LOW_LATENCY_DEFAULT, NVENC_LOWLATENCY),
        FUNC0(LOW_LATENCY_HP,      NVENC_LOWLATENCY),
        FUNC0(LOW_LATENCY_HQ,      NVENC_LOWLATENCY),
        FUNC0(LOSSLESS_DEFAULT,    NVENC_LOSSLESS),
        FUNC0(LOSSLESS_HP,         NVENC_LOSSLESS),
    };

    GUIDTuple *t = &presets[ctx->preset];

    ctx->init_encode_params.presetGUID = t->guid;
    ctx->flags = t->flags;
}