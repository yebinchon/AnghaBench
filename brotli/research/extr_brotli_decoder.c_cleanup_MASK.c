#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fin; scalar_t__ fout; scalar_t__ input_buffer; scalar_t__ output_buffer; scalar_t__ decoder; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(Context* ctx) {
  if (ctx->decoder) FUNC0(ctx->decoder);
  if (ctx->output_buffer) FUNC2(ctx->output_buffer);
  if (ctx->input_buffer) FUNC2(ctx->input_buffer);
  if (ctx->fout) FUNC1(ctx->fout);
  if (ctx->fin) FUNC1(ctx->fin);
}