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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  depth ;
typedef  int /*<<< orphan*/  HuffmanTree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const*,size_t const,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t const,int /*<<< orphan*/ *,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,size_t,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,size_t*,size_t,size_t,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static void FUNC6(const uint32_t* histogram,
                                     const size_t histogram_length,
                                     const size_t alphabet_size,
                                     HuffmanTree* tree,
                                     uint8_t* depth,
                                     uint16_t* bits,
                                     size_t* storage_ix,
                                     uint8_t* storage) {
  size_t count = 0;
  size_t s4[4] = { 0 };
  size_t i;
  size_t max_bits = 0;
  for (i = 0; i < histogram_length; i++) {
    if (histogram[i]) {
      if (count < 4) {
        s4[count] = i;
      } else if (count > 4) {
        break;
      }
      count++;
    }
  }

  {
    size_t max_bits_counter = alphabet_size - 1;
    while (max_bits_counter) {
      max_bits_counter >>= 1;
      ++max_bits;
    }
  }

  if (count <= 1) {
    FUNC3(4, 1, storage_ix, storage);
    FUNC3(max_bits, s4[0], storage_ix, storage);
    depth[s4[0]] = 0;
    bits[s4[0]] = 0;
    return;
  }

  FUNC5(depth, 0, histogram_length * sizeof(depth[0]));
  FUNC1(histogram, histogram_length, 15, tree, depth);
  FUNC0(depth, histogram_length, bits);

  if (count <= 4) {
    FUNC4(depth, s4, count, max_bits, storage_ix, storage);
  } else {
    FUNC2(depth, histogram_length, tree, storage_ix, storage);
  }
}