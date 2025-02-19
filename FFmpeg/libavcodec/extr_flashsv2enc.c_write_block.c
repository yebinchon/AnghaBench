
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_3__ {unsigned int data_size; int flags; unsigned int start; unsigned int len; unsigned int col; unsigned int row; int data; } ;
typedef TYPE_1__ Block ;


 int HAS_DIFF_BLOCKS ;
 int ZLIB_PRIME_COMPRESS_CURRENT ;
 int memcpy (unsigned int*,int ,unsigned int) ;

__attribute__((used)) static int write_block(Block * b, uint8_t * buf, int buf_size)
{
    int buf_pos = 0;
    unsigned block_size = b->data_size;

    if (b->flags & HAS_DIFF_BLOCKS)
        block_size += 2;
    if (b->flags & ZLIB_PRIME_COMPRESS_CURRENT)
        block_size += 2;
    if (block_size > 0)
        block_size += 1;
    if (buf_size < block_size + 2)
        return -1;

    buf[buf_pos++] = block_size >> 8;
    buf[buf_pos++] = block_size;

    if (block_size == 0)
        return buf_pos;

    buf[buf_pos++] = b->flags;

    if (b->flags & HAS_DIFF_BLOCKS) {
        buf[buf_pos++] = (b->start);
        buf[buf_pos++] = (b->len);
    }

    if (b->flags & ZLIB_PRIME_COMPRESS_CURRENT) {

        buf[buf_pos++] = (b->col);
        buf[buf_pos++] = (b->row);
    }

    memcpy(buf + buf_pos, b->data, b->data_size);

    buf_pos += b->data_size;

    return buf_pos;
}
