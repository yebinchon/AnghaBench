
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_20__ {scalar_t__ alphabet_size_max; scalar_t__ alphabet_size_limit; int distance_postfix_bits; int num_direct_distance_codes; } ;
struct TYPE_19__ {TYPE_7__ dist; } ;
struct TYPE_18__ {size_t cmd_prefix_; size_t insert_len_; int dist_prefix_; int dist_extra_; } ;
struct TYPE_16__ {size_t num_types; int num_blocks; int lengths; int types; } ;
struct TYPE_15__ {size_t num_types; int num_blocks; int lengths; int types; } ;
struct TYPE_14__ {size_t num_types; int num_blocks; int lengths; int types; } ;
struct TYPE_17__ {scalar_t__ literal_context_map_size; scalar_t__ distance_context_map_size; int distance_context_map; int literal_context_map; int distance_histograms_size; int distance_histograms; int command_histograms_size; int command_histograms; int literal_histograms_size; int literal_histograms; TYPE_3__ literal_split; TYPE_2__ distance_split; TYPE_1__ command_split; } ;
typedef TYPE_4__ MetaBlockSplit ;
typedef int MemoryManager ;
typedef int ContextType ;
typedef int ContextLut ;
typedef TYPE_5__ Command ;
typedef TYPE_6__ BrotliEncoderParams ;
typedef TYPE_7__ BrotliDistanceParams ;
typedef int BlockEncoder ;
typedef scalar_t__ BROTLI_BOOL ;


 int BROTLI_ALLOC (int *,int,int ) ;
 size_t BROTLI_CONTEXT (size_t,size_t,int ) ;
 int BROTLI_CONTEXT_LUT (int) ;
 int BROTLI_DCHECK (int) ;
 int BROTLI_DISTANCE_CONTEXT_BITS ;
 int BROTLI_FREE (int *,int) ;
 scalar_t__ BROTLI_IS_NULL (int) ;
 scalar_t__ BROTLI_IS_OOM (int *) ;
 int BROTLI_LITERAL_CONTEXT_BITS ;
 scalar_t__ BROTLI_NUM_COMMAND_SYMBOLS ;
 scalar_t__ BROTLI_NUM_HISTOGRAM_DISTANCE_SYMBOLS ;
 scalar_t__ BROTLI_NUM_LITERAL_SYMBOLS ;
 int BrotliWriteBits (scalar_t__,int,size_t*,size_t*) ;
 int BuildAndStoreBlockSwitchEntropyCodes (int *,int,size_t*,size_t*) ;
 int BuildAndStoreEntropyCodesCommand (int *,int *,int ,int ,scalar_t__,int,size_t*,size_t*) ;
 int BuildAndStoreEntropyCodesDistance (int *,int *,int ,int ,scalar_t__,int,size_t*,size_t*) ;
 int BuildAndStoreEntropyCodesLiteral (int *,int *,int ,int ,scalar_t__,int,size_t*,size_t*) ;
 int CleanupBlockEncoder (int *,int *) ;
 scalar_t__ CommandCopyLen (TYPE_5__ const*) ;
 size_t CommandDistanceContext (TYPE_5__ const*) ;
 int EncodeContextMap (int *,int ,scalar_t__,int ,int,size_t*,size_t*) ;
 int HuffmanTree ;
 int InitBlockEncoder (int *,scalar_t__,size_t,int ,int ,int ) ;
 int JumpToByteBoundary (size_t*,size_t*) ;
 int MAX_HUFFMAN_TREE_SIZE ;
 int StoreCommandExtra (TYPE_5__ const*,size_t*,size_t*) ;
 int StoreCompressedMetaBlockHeader (scalar_t__,size_t,size_t*,size_t*) ;
 int StoreSymbol (int *,size_t const,size_t*,size_t*) ;
 int StoreSymbolWithContext (int *,size_t,size_t,int ,size_t*,size_t*,int ) ;
 int StoreTrivialContextMap (int ,int ,int,size_t*,size_t*) ;
 int tree ;

void BrotliStoreMetaBlock(MemoryManager* m,
    const uint8_t* input, size_t start_pos, size_t length, size_t mask,
    uint8_t prev_byte, uint8_t prev_byte2, BROTLI_BOOL is_last,
    const BrotliEncoderParams* params, ContextType literal_context_mode,
    const Command* commands, size_t n_commands, const MetaBlockSplit* mb,
    size_t* storage_ix, uint8_t* storage) {

  size_t pos = start_pos;
  size_t i;
  uint32_t num_distance_symbols = params->dist.alphabet_size_max;
  uint32_t num_effective_distance_symbols = params->dist.alphabet_size_limit;
  HuffmanTree* tree;
  ContextLut literal_context_lut = BROTLI_CONTEXT_LUT(literal_context_mode);
  BlockEncoder literal_enc;
  BlockEncoder command_enc;
  BlockEncoder distance_enc;
  const BrotliDistanceParams* dist = &params->dist;
  BROTLI_DCHECK(
      num_effective_distance_symbols <= BROTLI_NUM_HISTOGRAM_DISTANCE_SYMBOLS);

  StoreCompressedMetaBlockHeader(is_last, length, storage_ix, storage);

  tree = BROTLI_ALLOC(m, HuffmanTree, MAX_HUFFMAN_TREE_SIZE);
  if (BROTLI_IS_OOM(m) || BROTLI_IS_NULL(tree)) return;
  InitBlockEncoder(&literal_enc, BROTLI_NUM_LITERAL_SYMBOLS,
      mb->literal_split.num_types, mb->literal_split.types,
      mb->literal_split.lengths, mb->literal_split.num_blocks);
  InitBlockEncoder(&command_enc, BROTLI_NUM_COMMAND_SYMBOLS,
      mb->command_split.num_types, mb->command_split.types,
      mb->command_split.lengths, mb->command_split.num_blocks);
  InitBlockEncoder(&distance_enc, num_effective_distance_symbols,
      mb->distance_split.num_types, mb->distance_split.types,
      mb->distance_split.lengths, mb->distance_split.num_blocks);

  BuildAndStoreBlockSwitchEntropyCodes(&literal_enc, tree, storage_ix, storage);
  BuildAndStoreBlockSwitchEntropyCodes(&command_enc, tree, storage_ix, storage);
  BuildAndStoreBlockSwitchEntropyCodes(
      &distance_enc, tree, storage_ix, storage);

  BrotliWriteBits(2, dist->distance_postfix_bits, storage_ix, storage);
  BrotliWriteBits(
      4, dist->num_direct_distance_codes >> dist->distance_postfix_bits,
      storage_ix, storage);
  for (i = 0; i < mb->literal_split.num_types; ++i) {
    BrotliWriteBits(2, literal_context_mode, storage_ix, storage);
  }

  if (mb->literal_context_map_size == 0) {
    StoreTrivialContextMap(mb->literal_histograms_size,
        BROTLI_LITERAL_CONTEXT_BITS, tree, storage_ix, storage);
  } else {
    EncodeContextMap(m,
        mb->literal_context_map, mb->literal_context_map_size,
        mb->literal_histograms_size, tree, storage_ix, storage);
    if (BROTLI_IS_OOM(m)) return;
  }

  if (mb->distance_context_map_size == 0) {
    StoreTrivialContextMap(mb->distance_histograms_size,
        BROTLI_DISTANCE_CONTEXT_BITS, tree, storage_ix, storage);
  } else {
    EncodeContextMap(m,
        mb->distance_context_map, mb->distance_context_map_size,
        mb->distance_histograms_size, tree, storage_ix, storage);
    if (BROTLI_IS_OOM(m)) return;
  }

  BuildAndStoreEntropyCodesLiteral(m, &literal_enc, mb->literal_histograms,
      mb->literal_histograms_size, BROTLI_NUM_LITERAL_SYMBOLS, tree,
      storage_ix, storage);
  if (BROTLI_IS_OOM(m)) return;
  BuildAndStoreEntropyCodesCommand(m, &command_enc, mb->command_histograms,
      mb->command_histograms_size, BROTLI_NUM_COMMAND_SYMBOLS, tree,
      storage_ix, storage);
  if (BROTLI_IS_OOM(m)) return;
  BuildAndStoreEntropyCodesDistance(m, &distance_enc, mb->distance_histograms,
      mb->distance_histograms_size, num_distance_symbols, tree,
      storage_ix, storage);
  if (BROTLI_IS_OOM(m)) return;
  BROTLI_FREE(m, tree);

  for (i = 0; i < n_commands; ++i) {
    const Command cmd = commands[i];
    size_t cmd_code = cmd.cmd_prefix_;
    StoreSymbol(&command_enc, cmd_code, storage_ix, storage);
    StoreCommandExtra(&cmd, storage_ix, storage);
    if (mb->literal_context_map_size == 0) {
      size_t j;
      for (j = cmd.insert_len_; j != 0; --j) {
        StoreSymbol(&literal_enc, input[pos & mask], storage_ix, storage);
        ++pos;
      }
    } else {
      size_t j;
      for (j = cmd.insert_len_; j != 0; --j) {
        size_t context =
            BROTLI_CONTEXT(prev_byte, prev_byte2, literal_context_lut);
        uint8_t literal = input[pos & mask];
        StoreSymbolWithContext(&literal_enc, literal, context,
            mb->literal_context_map, storage_ix, storage,
            BROTLI_LITERAL_CONTEXT_BITS);
        prev_byte2 = prev_byte;
        prev_byte = literal;
        ++pos;
      }
    }
    pos += CommandCopyLen(&cmd);
    if (CommandCopyLen(&cmd)) {
      prev_byte2 = input[(pos - 2) & mask];
      prev_byte = input[(pos - 1) & mask];
      if (cmd.cmd_prefix_ >= 128) {
        size_t dist_code = cmd.dist_prefix_ & 0x3FF;
        uint32_t distnumextra = cmd.dist_prefix_ >> 10;
        uint64_t distextra = cmd.dist_extra_;
        if (mb->distance_context_map_size == 0) {
          StoreSymbol(&distance_enc, dist_code, storage_ix, storage);
        } else {
          size_t context = CommandDistanceContext(&cmd);
          StoreSymbolWithContext(&distance_enc, dist_code, context,
              mb->distance_context_map, storage_ix, storage,
              BROTLI_DISTANCE_CONTEXT_BITS);
        }
        BrotliWriteBits(distnumextra, distextra, storage_ix, storage);
      }
    }
  }
  CleanupBlockEncoder(m, &distance_enc);
  CleanupBlockEncoder(m, &command_enc);
  CleanupBlockEncoder(m, &literal_enc);
  if (is_last) {
    JumpToByteBoundary(storage_ix, storage);
  }
}
