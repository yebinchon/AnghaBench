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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const,int,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (size_t const,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__ const*,size_t const) ; 

__attribute__((used)) static void FUNC3(const uint8_t* begin, const uint8_t* end,
                                      const size_t storage_ix_start,
                                      size_t* storage_ix, uint8_t* storage) {
  const size_t len = (size_t)(end - begin);
  FUNC1(storage_ix_start, storage_ix, storage);
  FUNC0(len, 1, storage_ix, storage);
  *storage_ix = (*storage_ix + 7u) & ~7u;
  FUNC2(&storage[*storage_ix >> 3], begin, len);
  *storage_ix += len << 3;
  storage[*storage_ix >> 3] = 0;
}