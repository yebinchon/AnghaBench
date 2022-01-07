
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int offset; int word; } ;
typedef TYPE_1__ lz4_hash_entry_t ;


 int LZ4_COMPRESS_HASH_ENTRIES ;
 int lz4_encode_2gb (int **,size_t,int const**,int const*,size_t const,TYPE_1__*,int) ;

size_t lz4raw_encode_buffer(uint8_t * __restrict dst_buffer, size_t dst_size,
                            const uint8_t * __restrict src_buffer, size_t src_size,
                            lz4_hash_entry_t hash_table[LZ4_COMPRESS_HASH_ENTRIES])
{

  const lz4_hash_entry_t HASH_FILL = { .offset = 0x80000000, .word = 0x0 };

  const uint8_t * src = src_buffer;
  uint8_t * dst = dst_buffer;


  const size_t BLOCK_SIZE = 0x7ffff000;
  while (src_size > 0)
  {
       for (int i=0;i<LZ4_COMPRESS_HASH_ENTRIES;) {
    hash_table[i++] = HASH_FILL;
    hash_table[i++] = HASH_FILL;
    hash_table[i++] = HASH_FILL;
    hash_table[i++] = HASH_FILL;
   }


    const size_t src_to_encode = src_size > BLOCK_SIZE ? BLOCK_SIZE : src_size;



    uint8_t * dst_start = dst;
    const uint8_t * src_start = src;
    lz4_encode_2gb(&dst, dst_size, &src, src, src_to_encode, hash_table, src_to_encode < src_size);


    size_t dst_used = dst - dst_start;
    size_t src_used = src - src_start;
    if (src_to_encode == src_size && src_used < src_to_encode) return 0;




    if (src_to_encode < src_size && src_to_encode - src_used >= (1<<16)) return 0;


    src_size -= src_used;
    dst_size -= dst_used;
  }

  return (size_t)(dst - dst_buffer);
}
