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
struct TYPE_7__ {int /*<<< orphan*/  force_overwrite; int /*<<< orphan*/  current_input_path; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BrotliDecoderState ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_DECODER_PARAM_LARGE_WINDOW ; 
 scalar_t__ BROTLI_FALSE ; 
 scalar_t__ BROTLI_TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BROTLI_BOOL FUNC9(Context* context) {
  while (FUNC5(context)) {
    BROTLI_BOOL is_ok = BROTLI_TRUE;
    BrotliDecoderState* s = FUNC0(NULL, NULL, NULL);
    if (!s) {
      FUNC7(stderr, "out of memory\n");
      return BROTLI_FALSE;
    }
    /* This allows decoding "large-window" streams. Though it creates
       fragmentation (new builds decode streams that old builds don't),
       it is better from used experience perspective. */
    FUNC2(s, BROTLI_DECODER_PARAM_LARGE_WINDOW, 1u);
    is_ok = FUNC6(context);
    if (is_ok && !context->current_input_path &&
        !context->force_overwrite && FUNC8(STDIN_FILENO)) {
      FUNC7(stderr, "Use -h help. Use -f to force input from a terminal.\n");
      is_ok = BROTLI_FALSE;
    }
    if (is_ok) is_ok = FUNC4(context, s);
    FUNC1(s);
    if (!FUNC3(context, is_ok)) is_ok = BROTLI_FALSE;
    if (!is_ok) return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}