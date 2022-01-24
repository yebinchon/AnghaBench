#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {void* fout; int /*<<< orphan*/ * output_buffer; int /*<<< orphan*/  decoder; void* fin; int /*<<< orphan*/ * input_buffer; } ;
typedef  TYPE_1__ Context ;
typedef  scalar_t__ BrotliDecoderResult ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_DECODER_PARAM_LARGE_WINDOW ; 
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT ; 
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT ; 
 scalar_t__ BROTLI_DECODER_RESULT_SUCCESS ; 
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int,int,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,void*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(int argc, char** argv) {
  Context ctx;
  BrotliDecoderResult result = BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT;
  size_t available_in;
  const uint8_t* next_in;
  size_t available_out = BUFFER_SIZE;
  uint8_t* next_out;
  FUNC10(&ctx);

  ctx.fin = FUNC5(STDIN_FILENO, "rb");
  if (!ctx.fin) FUNC4(&ctx, "can't open input file");
  ctx.fout = FUNC5(STDOUT_FILENO, "wb");
  if (!ctx.fout) FUNC4(&ctx, "can't open output file");
  ctx.input_buffer = (uint8_t*)FUNC11(BUFFER_SIZE);
  if (!ctx.input_buffer) FUNC4(&ctx, "out of memory / input buffer");
  ctx.output_buffer = (uint8_t*)FUNC11(BUFFER_SIZE);
  if (!ctx.output_buffer) FUNC4(&ctx, "out of memory / output buffer");
  ctx.decoder = FUNC0(0, 0, 0);
  if (!ctx.decoder) FUNC4(&ctx, "out of memory / decoder");
  FUNC2(ctx.decoder, BROTLI_DECODER_PARAM_LARGE_WINDOW, 1);

  next_out = ctx.output_buffer;
  while (1) {
    if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT) {
      if (FUNC6(ctx.fin)) break;
      available_in = FUNC8(ctx.input_buffer, 1, BUFFER_SIZE, ctx.fin);
      next_in = ctx.input_buffer;
      if (FUNC7(ctx.fin)) break;
    } else if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT) {
      FUNC9(ctx.output_buffer, 1, BUFFER_SIZE, ctx.fout);
      if (FUNC7(ctx.fout)) break;
      available_out = BUFFER_SIZE;
      next_out = ctx.output_buffer;
    } else {
      break;
    }
    result = FUNC1(
        ctx.decoder, &available_in, &next_in, &available_out, &next_out, 0);
  }
  if (next_out != ctx.output_buffer) {
    FUNC9(ctx.output_buffer, 1, next_out - ctx.output_buffer, ctx.fout);
  }
  if ((result == BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT) || FUNC7(ctx.fout)) {
    FUNC4(&ctx, "failed to write output");
  } else if (result != BROTLI_DECODER_RESULT_SUCCESS) {
    FUNC4(&ctx, "corrupt input");
  }
  FUNC3(&ctx);
  return 0;
}