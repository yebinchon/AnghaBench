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
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  input_pos_; int /*<<< orphan*/  last_processed_pos_; } ;
typedef  TYPE_1__ BrotliEncoderState ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BROTLI_BOOL FUNC2(BrotliEncoderState* s) {
  uint32_t wrapped_last_processed_pos = FUNC1(s->last_processed_pos_);
  uint32_t wrapped_input_pos = FUNC1(s->input_pos_);
  s->last_processed_pos_ = s->input_pos_;
  return FUNC0(wrapped_input_pos < wrapped_last_processed_pos);
}