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
struct TYPE_3__ {int /*<<< orphan*/  current_input_path; int /*<<< orphan*/  fin; int /*<<< orphan*/  input; int /*<<< orphan*/  next_in; scalar_t__ available_in; int /*<<< orphan*/  total_in; } ;
typedef  TYPE_1__ Context ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kFileBufferSize ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BROTLI_BOOL FUNC5(Context* context) {
  context->available_in =
      FUNC3(context->input, 1, kFileBufferSize, context->fin);
  context->total_in += context->available_in;
  context->next_in = context->input;
  if (FUNC1(context->fin)) {
    FUNC2(stderr, "failed to read input [%s]: %s\n",
            FUNC0(context->current_input_path), FUNC4(errno));
    return BROTLI_FALSE;
  }
  return BROTLI_TRUE;
}