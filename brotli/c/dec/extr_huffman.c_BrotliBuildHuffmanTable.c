
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int table ;
typedef int brotli_reg_t ;
typedef int HuffmanCode ;


 int BROTLI_DCHECK (int) ;
 int BROTLI_HUFFMAN_MAX_CODE_LENGTH ;
 int BROTLI_REVERSE_BITS_LOWEST ;
 int BROTLI_REVERSE_BITS_MAX ;
 size_t BrotliReverseBits (int) ;
 int ConstructHuffmanCode (int ,int) ;
 int NextTableBitSize (int*,int,int) ;
 int ReplicateValue (int *,int,int,int ) ;
 int memcpy (int *,int *,size_t) ;

uint32_t BrotliBuildHuffmanTable(HuffmanCode* root_table,
                                 int root_bits,
                                 const uint16_t* const symbol_lists,
                                 uint16_t* count) {
  HuffmanCode code;
  HuffmanCode* table;
  int len;
  int symbol;
  brotli_reg_t key;
  brotli_reg_t key_step;
  brotli_reg_t sub_key;
  brotli_reg_t sub_key_step;
  int step;
  int table_bits;
  int table_size;
  int total_size;
  int max_length = -1;
  int bits;
  int bits_count;

  BROTLI_DCHECK(root_bits <= BROTLI_REVERSE_BITS_MAX);
  BROTLI_DCHECK(BROTLI_HUFFMAN_MAX_CODE_LENGTH - root_bits <=
                BROTLI_REVERSE_BITS_MAX);

  while (symbol_lists[max_length] == 0xFFFF) max_length--;
  max_length += BROTLI_HUFFMAN_MAX_CODE_LENGTH + 1;

  table = root_table;
  table_bits = root_bits;
  table_size = 1 << table_bits;
  total_size = table_size;



  if (table_bits > max_length) {
    table_bits = max_length;
    table_size = 1 << table_bits;
  }
  key = 0;
  key_step = BROTLI_REVERSE_BITS_LOWEST;
  bits = 1;
  step = 2;
  do {
    symbol = bits - (BROTLI_HUFFMAN_MAX_CODE_LENGTH + 1);
    for (bits_count = count[bits]; bits_count != 0; --bits_count) {
      symbol = symbol_lists[symbol];
      code = ConstructHuffmanCode((uint8_t)bits, (uint16_t)symbol);
      ReplicateValue(&table[BrotliReverseBits(key)], step, table_size, code);
      key += key_step;
    }
    step <<= 1;
    key_step >>= 1;
  } while (++bits <= table_bits);


  while (total_size != table_size) {
    memcpy(&table[table_size], &table[0],
           (size_t)table_size * sizeof(table[0]));
    table_size <<= 1;
  }


  key_step = BROTLI_REVERSE_BITS_LOWEST >> (root_bits - 1);
  sub_key = (BROTLI_REVERSE_BITS_LOWEST << 1);
  sub_key_step = BROTLI_REVERSE_BITS_LOWEST;
  for (len = root_bits + 1, step = 2; len <= max_length; ++len) {
    symbol = len - (BROTLI_HUFFMAN_MAX_CODE_LENGTH + 1);
    for (; count[len] != 0; --count[len]) {
      if (sub_key == (BROTLI_REVERSE_BITS_LOWEST << 1U)) {
        table += table_size;
        table_bits = NextTableBitSize(count, len, root_bits);
        table_size = 1 << table_bits;
        total_size += table_size;
        sub_key = BrotliReverseBits(key);
        key += key_step;
        root_table[sub_key] = ConstructHuffmanCode(
            (uint8_t)(table_bits + root_bits),
            (uint16_t)(((size_t)(table - root_table)) - sub_key));
        sub_key = 0;
      }
      symbol = symbol_lists[symbol];
      code = ConstructHuffmanCode((uint8_t)(len - root_bits), (uint16_t)symbol);
      ReplicateValue(
          &table[BrotliReverseBits(sub_key)], step, table_size, code);
      sub_key += sub_key_step;
    }
    step <<= 1;
    sub_key_step >>= 1;
  }
  return (uint32_t)total_size;
}
