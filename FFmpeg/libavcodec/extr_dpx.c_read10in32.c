
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int read32 (int const**,int) ;

__attribute__((used)) static uint16_t read10in32(const uint8_t **ptr, uint32_t *lbuf,
                           int *n_datum, int is_big, int shift)
{
    if (*n_datum)
        (*n_datum)--;
    else {
        *lbuf = read32(ptr, is_big);
        *n_datum = 2;
    }

    *lbuf = *lbuf << 10 | *lbuf >> shift & 0x3FFFFF;

    return *lbuf & 0x3FF;
}
