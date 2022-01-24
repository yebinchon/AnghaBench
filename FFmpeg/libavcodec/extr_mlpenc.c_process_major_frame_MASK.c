#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int num_substreams; int /*<<< orphan*/ * major_channel_params; int /*<<< orphan*/  cur_channel_params; int /*<<< orphan*/ ** major_decoding_params; int /*<<< orphan*/ * cur_decoding_params; TYPE_1__* restart_header; TYPE_1__* cur_restart_header; int /*<<< orphan*/  major_frame_size; int /*<<< orphan*/  number_of_samples; int /*<<< orphan*/  major_number_of_frames; int /*<<< orphan*/  number_of_frames; scalar_t__ starting_frame_index; int /*<<< orphan*/  major_inout_buffer; int /*<<< orphan*/  sample_buffer; } ;
struct TYPE_7__ {unsigned int min_channel; unsigned int max_channel; } ;
typedef  TYPE_1__ RestartHeader ;
typedef  TYPE_2__ MLPEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(MLPEncodeContext *ctx)
{
    unsigned int substr;

    ctx->sample_buffer = ctx->major_inout_buffer;

    ctx->starting_frame_index = 0;
    ctx->number_of_frames = ctx->major_number_of_frames;
    ctx->number_of_samples = ctx->major_frame_size;

    for (substr = 0; substr < ctx->num_substreams; substr++) {
        RestartHeader *rh = ctx->cur_restart_header;
        unsigned int channel;

        ctx->cur_restart_header = &ctx->restart_header[substr];

        ctx->cur_decoding_params = &ctx->major_decoding_params[1][substr];
        ctx->cur_channel_params = ctx->major_channel_params[1];

        FUNC1(ctx);
        FUNC2        (ctx);

        for (channel = rh->min_channel; channel <= rh->max_channel; channel++)
            FUNC0(ctx, channel);
    }
}