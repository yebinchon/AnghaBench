#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ available_in; scalar_t__ verbosity; int /*<<< orphan*/  next_out; int /*<<< orphan*/  available_out; int /*<<< orphan*/  next_in; int /*<<< orphan*/  current_input_path; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BrotliDecoderState ;
typedef  scalar_t__ BrotliDecoderResult ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT ; 
 scalar_t__ BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT ; 
 scalar_t__ BROTLI_DECODER_RESULT_SUCCESS ; 
 int /*<<< orphan*/  BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BROTLI_BOOL FUNC9(Context* context, BrotliDecoderState* s) {
  BrotliDecoderResult result = BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT;
  FUNC3(context);
  for (;;) {
    if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_INPUT) {
      if (!FUNC2(context)) {
        FUNC8(stderr, "corrupt input [%s]\n",
                FUNC5(context->current_input_path));
        return BROTLI_FALSE;
      }
      if (!FUNC6(context)) return BROTLI_FALSE;
    } else if (result == BROTLI_DECODER_RESULT_NEEDS_MORE_OUTPUT) {
      if (!FUNC7(context)) return BROTLI_FALSE;
    } else if (result == BROTLI_DECODER_RESULT_SUCCESS) {
      if (!FUNC1(context)) return BROTLI_FALSE;
      if (context->available_in != 0 || FUNC2(context)) {
        FUNC8(stderr, "corrupt input [%s]\n",
                FUNC5(context->current_input_path));
        return BROTLI_FALSE;
      }
      if (context->verbosity > 0) {
        FUNC8(stderr, "Decompressed ");
        FUNC4(context);
        FUNC8(stderr, "\n");
      }
      return BROTLI_TRUE;
    } else {
      FUNC8(stderr, "corrupt input [%s]\n",
              FUNC5(context->current_input_path));
      return BROTLI_FALSE;
    }

    result = FUNC0(s, &context->available_in,
        &context->next_in, &context->available_out, &context->next_out, 0);
  }
}