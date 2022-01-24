#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  size_t uint32_t ;
typedef  size_t uint16_t ;
struct TYPE_5__ {size_t cmd_prefix_; size_t insert_len_; int dist_prefix_; size_t dist_extra_; } ;
typedef  TYPE_1__ Command ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t const,size_t const,size_t*,size_t*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,size_t*,size_t*) ; 

__attribute__((used)) static void FUNC3(const uint8_t* input,
                                      size_t start_pos,
                                      size_t mask,
                                      const Command* commands,
                                      size_t n_commands,
                                      const uint8_t* lit_depth,
                                      const uint16_t* lit_bits,
                                      const uint8_t* cmd_depth,
                                      const uint16_t* cmd_bits,
                                      const uint8_t* dist_depth,
                                      const uint16_t* dist_bits,
                                      size_t* storage_ix,
                                      uint8_t* storage) {
  size_t pos = start_pos;
  size_t i;
  for (i = 0; i < n_commands; ++i) {
    const Command cmd = commands[i];
    const size_t cmd_code = cmd.cmd_prefix_;
    size_t j;
    FUNC0(
        cmd_depth[cmd_code], cmd_bits[cmd_code], storage_ix, storage);
    FUNC2(&cmd, storage_ix, storage);
    for (j = cmd.insert_len_; j != 0; --j) {
      const uint8_t literal = input[pos & mask];
      FUNC0(
          lit_depth[literal], lit_bits[literal], storage_ix, storage);
      ++pos;
    }
    pos += FUNC1(&cmd);
    if (FUNC1(&cmd) && cmd.cmd_prefix_ >= 128) {
      const size_t dist_code = cmd.dist_prefix_ & 0x3FF;
      const uint32_t distnumextra = cmd.dist_prefix_ >> 10;
      const uint32_t distextra = cmd.dist_extra_;
      FUNC0(dist_depth[dist_code], dist_bits[dist_code],
                      storage_ix, storage);
      FUNC0(distnumextra, distextra, storage_ix, storage);
    }
  }
}