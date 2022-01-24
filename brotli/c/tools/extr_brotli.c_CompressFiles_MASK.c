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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_7__ {scalar_t__ lgwin; int input_file_length; int /*<<< orphan*/  force_overwrite; int /*<<< orphan*/  current_output_path; scalar_t__ quality; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BrotliEncoderState ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ BROTLI_FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ BROTLI_MAX_WINDOW_BITS ; 
 scalar_t__ BROTLI_MIN_WINDOW_BITS ; 
 int /*<<< orphan*/  BROTLI_PARAM_LARGE_WINDOW ; 
 int /*<<< orphan*/  BROTLI_PARAM_LGWIN ; 
 int /*<<< orphan*/  BROTLI_PARAM_QUALITY ; 
 int /*<<< orphan*/  BROTLI_PARAM_SIZE_HINT ; 
 scalar_t__ BROTLI_TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ DEFAULT_LGWIN ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static BROTLI_BOOL FUNC10(Context* context) {
  while (FUNC6(context)) {
    BROTLI_BOOL is_ok = BROTLI_TRUE;
    BrotliEncoderState* s = FUNC1(NULL, NULL, NULL);
    if (!s) {
      FUNC8(stderr, "out of memory\n");
      return BROTLI_FALSE;
    }
    FUNC3(s,
        BROTLI_PARAM_QUALITY, (uint32_t)context->quality);
    if (context->lgwin > 0) {
      /* Specified by user. */
      /* Do not enable "large-window" extension, if not required. */
      if (context->lgwin > BROTLI_MAX_WINDOW_BITS) {
        FUNC3(s, BROTLI_PARAM_LARGE_WINDOW, 1u);
      }
      FUNC3(s,
          BROTLI_PARAM_LGWIN, (uint32_t)context->lgwin);
    } else {
      /* 0, or not specified by user; could be chosen by compressor. */
      uint32_t lgwin = DEFAULT_LGWIN;
      /* Use file size to limit lgwin. */
      if (context->input_file_length >= 0) {
        lgwin = BROTLI_MIN_WINDOW_BITS;
        while (FUNC0(lgwin) <
               (uint64_t)context->input_file_length) {
          lgwin++;
          if (lgwin == BROTLI_MAX_WINDOW_BITS) break;
        }
      }
      FUNC3(s, BROTLI_PARAM_LGWIN, lgwin);
    }
    if (context->input_file_length > 0) {
      uint32_t size_hint = context->input_file_length < (1 << 30) ?
          (uint32_t)context->input_file_length : (1u << 30);
      FUNC3(s, BROTLI_PARAM_SIZE_HINT, size_hint);
    }
    is_ok = FUNC7(context);
    if (is_ok && !context->current_output_path &&
        !context->force_overwrite && FUNC9(STDOUT_FILENO)) {
      FUNC8(stderr, "Use -h help. Use -f to force output to a terminal.\n");
      is_ok = BROTLI_FALSE;
    }
    if (is_ok) is_ok = FUNC5(context, s);
    FUNC2(s);
    if (!FUNC4(context, is_ok)) is_ok = BROTLI_FALSE;
    if (!is_ok) return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}