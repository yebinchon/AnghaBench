#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_13__ {int alphabet_size_max; } ;
struct TYPE_17__ {TYPE_1__ dist; } ;
struct TYPE_16__ {int /*<<< orphan*/  data_; } ;
struct TYPE_15__ {int /*<<< orphan*/  data_; } ;
struct TYPE_14__ {int /*<<< orphan*/  data_; } ;
typedef  int /*<<< orphan*/  MemoryManager ;
typedef  TYPE_2__ HistogramLiteral ;
typedef  TYPE_3__ HistogramDistance ;
typedef  TYPE_4__ HistogramCommand ;
typedef  int /*<<< orphan*/  Command ;
typedef  TYPE_5__ BrotliEncoderParams ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int BROTLI_NUM_COMMAND_SYMBOLS ; 
 int BROTLI_NUM_LITERAL_SYMBOLS ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const*,size_t,TYPE_2__*,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int HuffmanTree ; 
 int /*<<< orphan*/  FUNC10 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HUFFMAN_TREE_SIZE ; 
 int MAX_SIMPLE_DISTANCE_ALPHABET_SIZE ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,size_t,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,size_t,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *) ; 
 int tree ; 

void FUNC13(MemoryManager* m,
    const uint8_t* input, size_t start_pos, size_t length, size_t mask,
    BROTLI_BOOL is_last, const BrotliEncoderParams* params,
    const Command* commands, size_t n_commands,
    size_t* storage_ix, uint8_t* storage) {
  HistogramLiteral lit_histo;
  HistogramCommand cmd_histo;
  HistogramDistance dist_histo;
  uint8_t lit_depth[BROTLI_NUM_LITERAL_SYMBOLS];
  uint16_t lit_bits[BROTLI_NUM_LITERAL_SYMBOLS];
  uint8_t cmd_depth[BROTLI_NUM_COMMAND_SYMBOLS];
  uint16_t cmd_bits[BROTLI_NUM_COMMAND_SYMBOLS];
  uint8_t dist_depth[MAX_SIMPLE_DISTANCE_ALPHABET_SIZE];
  uint16_t dist_bits[MAX_SIMPLE_DISTANCE_ALPHABET_SIZE];
  HuffmanTree* tree;
  uint32_t num_distance_symbols = params->dist.alphabet_size_max;

  FUNC11(is_last, length, storage_ix, storage);

  FUNC9(&lit_histo);
  FUNC7(&cmd_histo);
  FUNC8(&dist_histo);

  FUNC6(input, start_pos, mask, commands, n_commands,
                  &lit_histo, &cmd_histo, &dist_histo);

  FUNC4(13, 0, storage_ix, storage);

  tree = FUNC0(m, HuffmanTree, MAX_HUFFMAN_TREE_SIZE);
  if (FUNC3(m) || FUNC2(tree)) return;
  FUNC5(lit_histo.data_, BROTLI_NUM_LITERAL_SYMBOLS,
                           BROTLI_NUM_LITERAL_SYMBOLS, tree,
                           lit_depth, lit_bits,
                           storage_ix, storage);
  FUNC5(cmd_histo.data_, BROTLI_NUM_COMMAND_SYMBOLS,
                           BROTLI_NUM_COMMAND_SYMBOLS, tree,
                           cmd_depth, cmd_bits,
                           storage_ix, storage);
  FUNC5(dist_histo.data_, MAX_SIMPLE_DISTANCE_ALPHABET_SIZE,
                           num_distance_symbols, tree,
                           dist_depth, dist_bits,
                           storage_ix, storage);
  FUNC1(m, tree);
  FUNC12(input, start_pos, mask, commands,
                            n_commands, lit_depth, lit_bits,
                            cmd_depth, cmd_bits,
                            dist_depth, dist_bits,
                            storage_ix, storage);
  if (is_last) {
    FUNC10(storage_ix, storage);
  }
}