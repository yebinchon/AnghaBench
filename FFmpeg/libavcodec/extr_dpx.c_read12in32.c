
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int read32 (int const**,int) ;

__attribute__((used)) static uint16_t read12in32(const uint8_t **ptr, uint32_t *lbuf,
                           int *n_datum, int is_big)
{
    if (*n_datum)
        (*n_datum)--;
    else {
        *lbuf = read32(ptr, is_big);
        *n_datum = 7;
    }

    switch (*n_datum){
    case 7: return *lbuf & 0xFFF;
    case 6: return (*lbuf >> 12) & 0xFFF;
    case 5: {
            uint32_t c = *lbuf >> 24;
            *lbuf = read32(ptr, is_big);
            c |= *lbuf << 8;
            return c & 0xFFF;
            }
    case 4: return (*lbuf >> 4) & 0xFFF;
    case 3: return (*lbuf >> 16) & 0xFFF;
    case 2: {
            uint32_t c = *lbuf >> 28;
            *lbuf = read32(ptr, is_big);
            c |= *lbuf << 4;
            return c & 0xFFF;
            }
    case 1: return (*lbuf >> 8) & 0xFFF;
    default: return *lbuf >> 20;
    }
}
