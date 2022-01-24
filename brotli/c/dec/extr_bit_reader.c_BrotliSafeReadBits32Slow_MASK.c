#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  BrotliBitReaderState ;
typedef  int /*<<< orphan*/  BrotliBitReader ;
typedef  int /*<<< orphan*/  BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BROTLI_FALSE ; 
 int /*<<< orphan*/  BROTLI_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int,int*) ; 

BROTLI_BOOL FUNC4(BrotliBitReader* const br,
    uint32_t n_bits, uint32_t* val) {
  uint32_t low_val;
  uint32_t high_val;
  BrotliBitReaderState memento;
  FUNC0(n_bits <= 32);
  FUNC0(n_bits > 24);
  FUNC2(br, &memento);
  if (!FUNC3(br, 16, &low_val) ||
      !FUNC3(br, n_bits - 16, &high_val)) {
    FUNC1(br, &memento);
    return BROTLI_FALSE;
  }
  *val = low_val | (high_val << 16);
  return BROTLI_TRUE;
}