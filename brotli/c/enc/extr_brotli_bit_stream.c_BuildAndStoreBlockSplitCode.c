
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int type_histo ;
typedef int length_histo ;
struct TYPE_4__ {int * length_bits; int * length_depths; int * type_bits; int * type_depths; } ;
typedef int HuffmanTree ;
typedef int BlockTypeCodeCalculator ;
typedef TYPE_1__ BlockSplitCode ;


 int BROTLI_MAX_BLOCK_TYPE_SYMBOLS ;
 int BROTLI_NUM_BLOCK_LEN_SYMBOLS ;
 size_t BlockLengthPrefixCode (int const) ;
 int BuildAndStoreHuffmanTree (int *,size_t const,size_t const,int *,int *,int *,size_t*,int *) ;
 int InitBlockTypeCodeCalculator (int *) ;
 size_t NextBlockTypeCode (int *,int const) ;
 int StoreBlockSwitch (TYPE_1__*,int const,int const,int,size_t*,int *) ;
 int StoreVarLenUint8 (size_t const,size_t*,int *) ;
 int memset (int *,int ,size_t const) ;

__attribute__((used)) static void BuildAndStoreBlockSplitCode(const uint8_t* types,
                                        const uint32_t* lengths,
                                        const size_t num_blocks,
                                        const size_t num_types,
                                        HuffmanTree* tree,
                                        BlockSplitCode* code,
                                        size_t* storage_ix,
                                        uint8_t* storage) {
  uint32_t type_histo[BROTLI_MAX_BLOCK_TYPE_SYMBOLS];
  uint32_t length_histo[BROTLI_NUM_BLOCK_LEN_SYMBOLS];
  size_t i;
  BlockTypeCodeCalculator type_code_calculator;
  memset(type_histo, 0, (num_types + 2) * sizeof(type_histo[0]));
  memset(length_histo, 0, sizeof(length_histo));
  InitBlockTypeCodeCalculator(&type_code_calculator);
  for (i = 0; i < num_blocks; ++i) {
    size_t type_code = NextBlockTypeCode(&type_code_calculator, types[i]);
    if (i != 0) ++type_histo[type_code];
    ++length_histo[BlockLengthPrefixCode(lengths[i])];
  }
  StoreVarLenUint8(num_types - 1, storage_ix, storage);
  if (num_types > 1) {
    BuildAndStoreHuffmanTree(&type_histo[0], num_types + 2, num_types + 2, tree,
                             &code->type_depths[0], &code->type_bits[0],
                             storage_ix, storage);
    BuildAndStoreHuffmanTree(&length_histo[0], BROTLI_NUM_BLOCK_LEN_SYMBOLS,
                             BROTLI_NUM_BLOCK_LEN_SYMBOLS,
                             tree, &code->length_depths[0],
                             &code->length_bits[0], storage_ix, storage);
    StoreBlockSwitch(code, lengths[0], types[0], 1, storage_ix, storage);
  }
}
