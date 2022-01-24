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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(BROTLI_BOOL is_final_block,
                                           size_t length,
                                           size_t* storage_ix,
                                           uint8_t* storage) {
  uint64_t lenbits;
  size_t nlenbits;
  uint64_t nibblesbits;

  /* Write ISLAST bit. */
  FUNC1(1, (uint64_t)is_final_block, storage_ix, storage);
  /* Write ISEMPTY bit. */
  if (is_final_block) {
    FUNC1(1, 0, storage_ix, storage);
  }

  FUNC0(length, &lenbits, &nlenbits, &nibblesbits);
  FUNC1(2, nibblesbits, storage_ix, storage);
  FUNC1(nlenbits, lenbits, storage_ix, storage);

  if (!is_final_block) {
    /* Write ISUNCOMPRESSED bit. */
    FUNC1(1, 0, storage_ix, storage);
  }
}