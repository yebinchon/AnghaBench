#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SwrContext {int log_level_offset; int /*<<< orphan*/  user_out_ch_layout; int /*<<< orphan*/  user_in_ch_layout; void* log_ctx; } ;
typedef  int int64_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct SwrContext*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct SwrContext*,char*,int,int /*<<< orphan*/ ) ; 
 struct SwrContext* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct SwrContext**) ; 

struct SwrContext *FUNC5(struct SwrContext *s,
                                      int64_t out_ch_layout, enum AVSampleFormat out_sample_fmt, int out_sample_rate,
                                      int64_t  in_ch_layout, enum AVSampleFormat  in_sample_fmt, int  in_sample_rate,
                                      int log_offset, void *log_ctx){
    if(!s) s= FUNC3();
    if(!s) return NULL;

    s->log_level_offset= log_offset;
    s->log_ctx= log_ctx;

    if (FUNC2(s, "ocl", out_ch_layout,   0) < 0)
        goto fail;

    if (FUNC2(s, "osf", out_sample_fmt,  0) < 0)
        goto fail;

    if (FUNC2(s, "osr", out_sample_rate, 0) < 0)
        goto fail;

    if (FUNC2(s, "icl", in_ch_layout,    0) < 0)
        goto fail;

    if (FUNC2(s, "isf", in_sample_fmt,   0) < 0)
        goto fail;

    if (FUNC2(s, "isr", in_sample_rate,  0) < 0)
        goto fail;

    if (FUNC2(s, "ich", FUNC0(s-> user_in_ch_layout), 0) < 0)
        goto fail;

    if (FUNC2(s, "och", FUNC0(s->user_out_ch_layout), 0) < 0)
        goto fail;

    FUNC2(s, "uch", 0, 0);
    return s;
fail:
    FUNC1(s, AV_LOG_ERROR, "Failed to set option\n");
    FUNC4(&s);
    return NULL;
}