
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int FLACParseContext ;


 int AV_RB16 (int *) ;
 int AV_RN32 (int *) ;
 int find_headers_search_validate (int *,int) ;

__attribute__((used)) static int find_headers_search(FLACParseContext *fpc, uint8_t *buf,
                               int buf_size, int search_start)
{
    int size = 0, mod_offset = (buf_size - 1) % 4, i, j;
    uint32_t x;

    for (i = 0; i < mod_offset; i++) {
        if ((AV_RB16(buf + i) & 0xFFFE) == 0xFFF8)
            size = find_headers_search_validate(fpc, search_start + i);
    }

    for (; i < buf_size - 1; i += 4) {
        x = AV_RN32(buf + i);
        if (((x & ~(x + 0x01010101)) & 0x80808080)) {
            for (j = 0; j < 4; j++) {
                if ((AV_RB16(buf + i + j) & 0xFFFE) == 0xFFF8)
                    size = find_headers_search_validate(fpc, search_start + i + j);
            }
        }
    }
    return size;
}
