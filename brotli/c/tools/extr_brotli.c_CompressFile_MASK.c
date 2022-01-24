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
struct TYPE_9__ {scalar_t__ available_in; scalar_t__ available_out; scalar_t__ verbosity; int /*<<< orphan*/  current_input_path; int /*<<< orphan*/  next_out; int /*<<< orphan*/  next_in; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BrotliEncoderState ;
typedef  int BROTLI_BOOL ;

/* Variables and functions */
 int BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_OPERATION_FINISH ; 
 int /*<<< orphan*/  BROTLI_OPERATION_PROCESS ; 
 int BROTLI_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BROTLI_BOOL FUNC10(Context* context, BrotliEncoderState* s) {
  BROTLI_BOOL is_eof = BROTLI_FALSE;
  FUNC4(context);
  for (;;) {
    if (context->available_in == 0 && !is_eof) {
      if (!FUNC7(context)) return BROTLI_FALSE;
      is_eof = !FUNC3(context);
    }

    if (!FUNC0(s,
        is_eof ? BROTLI_OPERATION_FINISH : BROTLI_OPERATION_PROCESS,
        &context->available_in, &context->next_in,
        &context->available_out, &context->next_out, NULL)) {
      /* Should detect OOM? */
      FUNC9(stderr, "failed to compress data [%s]\n",
              FUNC6(context->current_input_path));
      return BROTLI_FALSE;
    }

    if (context->available_out == 0) {
      if (!FUNC8(context)) return BROTLI_FALSE;
    }

    if (FUNC1(s)) {
      if (!FUNC2(context)) return BROTLI_FALSE;
      if (context->verbosity > 0) {
        FUNC9(stderr, "Compressed ");
        FUNC5(context);
        FUNC9(stderr, "\n");
      }
      return BROTLI_TRUE;
    }
  }
}