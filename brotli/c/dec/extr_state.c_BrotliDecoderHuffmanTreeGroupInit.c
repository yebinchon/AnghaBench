
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_3__ {int * codes; int ** htrees; void* num_htrees; void* alphabet_size_limit; void* alphabet_size_max; } ;
typedef TYPE_1__ HuffmanTreeGroup ;
typedef int HuffmanCode ;
typedef int BrotliDecoderState ;
typedef int BROTLI_BOOL ;


 scalar_t__ BROTLI_DECODER_ALLOC (int *,size_t const) ;
 size_t* kMaxHuffmanTableSize ;

BROTLI_BOOL BrotliDecoderHuffmanTreeGroupInit(BrotliDecoderState* s,
    HuffmanTreeGroup* group, uint32_t alphabet_size_max,
    uint32_t alphabet_size_limit, uint32_t ntrees) {

  const size_t max_table_size =
      kMaxHuffmanTableSize[(alphabet_size_limit + 31) >> 5];
  const size_t code_size = sizeof(HuffmanCode) * ntrees * max_table_size;
  const size_t htree_size = sizeof(HuffmanCode*) * ntrees;

  HuffmanCode** p = (HuffmanCode**)BROTLI_DECODER_ALLOC(s,
      code_size + htree_size);
  group->alphabet_size_max = (uint16_t)alphabet_size_max;
  group->alphabet_size_limit = (uint16_t)alphabet_size_limit;
  group->num_htrees = (uint16_t)ntrees;
  group->htrees = p;
  group->codes = (HuffmanCode*)(&p[ntrees]);
  return !!p;
}
