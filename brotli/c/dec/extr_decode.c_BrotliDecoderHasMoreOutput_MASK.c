#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ringbuffer; scalar_t__ error_code; } ;
typedef  TYPE_1__ BrotliDecoderState ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 

BROTLI_BOOL FUNC2(const BrotliDecoderState* s) {
  /* After unrecoverable error remaining output is considered nonsensical. */
  if ((int)s->error_code < 0) {
    return BROTLI_FALSE;
  }
  return FUNC0(
      s->ringbuffer != 0 && FUNC1(s, BROTLI_FALSE) != 0);
}