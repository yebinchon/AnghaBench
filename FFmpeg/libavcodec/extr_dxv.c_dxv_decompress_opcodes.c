
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int GetByteContext ;


 int bytestream2_get_buffer (int *,void*,size_t) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_peek_byte (int *) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;
 int fill_ltable (int *,int *,int*) ;
 int get_opcodes (int *,int *,void*,size_t,int) ;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static int dxv_decompress_opcodes(GetByteContext *gb, void *dstp, size_t op_size)
{
    int pos = bytestream2_tell(gb);
    int flag = bytestream2_peek_byte(gb);

    if ((flag & 3) == 0) {
        bytestream2_skip(gb, 1);
        bytestream2_get_buffer(gb, dstp, op_size);
    } else if ((flag & 3) == 1) {
        bytestream2_skip(gb, 1);
        memset(dstp, bytestream2_get_byte(gb), op_size);
    } else {
        uint32_t table[256];
        int ret, elements = 0;

        ret = fill_ltable(gb, table, &elements);
        if (ret < 0)
            return ret;
        ret = get_opcodes(gb, table, dstp, op_size, elements);
        if (ret < 0)
            return ret;
    }
    return bytestream2_tell(gb) - pos;
}
