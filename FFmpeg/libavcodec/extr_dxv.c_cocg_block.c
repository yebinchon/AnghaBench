
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptrdiff_t ;


 int decompress_indices (int*,int const*) ;
 int extract_component (int,int,int) ;

__attribute__((used)) static int cocg_block(uint8_t *plane0, ptrdiff_t stride0,
                      uint8_t *plane1, ptrdiff_t stride1,
                      const uint8_t *block)
{
    uint8_t co_indices[16];
    uint8_t cg_indices[16];
    uint8_t co0 = *(block);
    uint8_t co1 = *(block + 1);
    uint8_t cg0 = *(block + 8);
    uint8_t cg1 = *(block + 9);
    int x, y;

    decompress_indices(co_indices, block + 2);
    decompress_indices(cg_indices, block + 10);

    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            int co_code = co_indices[x + y * 4];
            int cg_code = cg_indices[x + y * 4];

            plane0[x] = extract_component(cg0, cg1, cg_code);
            plane1[x] = extract_component(co0, co1, co_code);
        }
        plane0 += stride0;
        plane1 += stride1;
    }

    return 16;
}
