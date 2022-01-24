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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  histogram ;
typedef  int /*<<< orphan*/  HuffmanTree ;

/* Variables and functions */
 int BROTLI_MAX_CONTEXT_MAP_SYMBOLS ; 
 int /*<<< orphan*/  FUNC0 (int,int,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,size_t,size_t,int /*<<< orphan*/ *,int*,int*,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC4(size_t num_types,
                                   size_t context_bits,
                                   HuffmanTree* tree,
                                   size_t* storage_ix,
                                   uint8_t* storage) {
  FUNC2(num_types - 1, storage_ix, storage);
  if (num_types > 1) {
    size_t repeat_code = context_bits - 1u;
    size_t repeat_bits = (1u << repeat_code) - 1u;
    size_t alphabet_size = num_types + repeat_code;
    uint32_t histogram[BROTLI_MAX_CONTEXT_MAP_SYMBOLS];
    uint8_t depths[BROTLI_MAX_CONTEXT_MAP_SYMBOLS];
    uint16_t bits[BROTLI_MAX_CONTEXT_MAP_SYMBOLS];
    size_t i;
    FUNC3(histogram, 0, alphabet_size * sizeof(histogram[0]));
    /* Write RLEMAX. */
    FUNC0(1, 1, storage_ix, storage);
    FUNC0(4, repeat_code - 1, storage_ix, storage);
    histogram[repeat_code] = (uint32_t)num_types;
    histogram[0] = 1;
    for (i = context_bits; i < alphabet_size; ++i) {
      histogram[i] = 1;
    }
    FUNC1(histogram, alphabet_size, alphabet_size,
                             tree, depths, bits, storage_ix, storage);
    for (i = 0; i < num_types; ++i) {
      size_t code = (i == 0 ? 0 : i + context_bits - 1);
      FUNC0(depths[code], bits[code], storage_ix, storage);
      FUNC0(
          depths[repeat_code], bits[repeat_code], storage_ix, storage);
      FUNC0(repeat_code, repeat_bits, storage_ix, storage);
    }
    /* Write IMTF (inverse-move-to-front) bit. */
    FUNC0(1, 1, storage_ix, storage);
  }
}