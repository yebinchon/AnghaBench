#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef  int /*<<< orphan*/  conv_func_type ;
struct TYPE_7__ {int channels; int const* ch_map; int /*<<< orphan*/  simd_f; int /*<<< orphan*/  silence; int /*<<< orphan*/ * conv_f; } ;
typedef  TYPE_1__ AudioConvert ;

/* Variables and functions */
 scalar_t__ ARCH_AARCH64 ; 
 scalar_t__ ARCH_ARM ; 
 size_t AV_SAMPLE_FMT_NB ; 
 int AV_SAMPLE_FMT_U8 ; 
 int AV_SAMPLE_FMT_U8P ; 
 scalar_t__ HAVE_MMX ; 
 scalar_t__ HAVE_X86ASM ; 
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  cpy1 ; 
 int /*<<< orphan*/  cpy2 ; 
 int /*<<< orphan*/  cpy4 ; 
 int /*<<< orphan*/  cpy8 ; 
 int /*<<< orphan*/ ** fmt_pair_to_conv_functions ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int,int) ; 

AudioConvert *FUNC8(enum AVSampleFormat out_fmt,
                                       enum AVSampleFormat in_fmt,
                                       int channels, const int *ch_map,
                                       int flags)
{
    AudioConvert *ctx;
    conv_func_type *f = fmt_pair_to_conv_functions[FUNC1(out_fmt) + AV_SAMPLE_FMT_NB*FUNC1(in_fmt)];

    if (!f)
        return NULL;
    ctx = FUNC3(sizeof(*ctx));
    if (!ctx)
        return NULL;

    if(channels == 1){
         in_fmt = FUNC2( in_fmt);
        out_fmt = FUNC2(out_fmt);
    }

    ctx->channels = channels;
    ctx->conv_f   = f;
    ctx->ch_map   = ch_map;
    if (in_fmt == AV_SAMPLE_FMT_U8 || in_fmt == AV_SAMPLE_FMT_U8P)
        FUNC4(ctx->silence, 0x80, sizeof(ctx->silence));

    if(out_fmt == in_fmt && !ch_map) {
        switch(FUNC0(in_fmt)){
            case 1:ctx->simd_f = cpy1; break;
            case 2:ctx->simd_f = cpy2; break;
            case 4:ctx->simd_f = cpy4; break;
            case 8:ctx->simd_f = cpy8; break;
        }
    }

    if(HAVE_X86ASM && HAVE_MMX) FUNC7(ctx, out_fmt, in_fmt, channels);
    if(ARCH_ARM)              FUNC6(ctx, out_fmt, in_fmt, channels);
    if(ARCH_AARCH64)          FUNC5(ctx, out_fmt, in_fmt, channels);

    return ctx;
}