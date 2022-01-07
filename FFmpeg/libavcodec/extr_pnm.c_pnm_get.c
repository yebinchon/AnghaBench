
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_3__ {int const* bytestream; int const* bytestream_end; } ;
typedef TYPE_1__ PNMContext ;


 int pnm_space (int) ;

__attribute__((used)) static void pnm_get(PNMContext *sc, char *str, int buf_size)
{
    char *s;
    int c;
    uint8_t *bs = sc->bytestream;
    const uint8_t *end = sc->bytestream_end;


    while (bs < end) {
        c = *bs++;
        if (c == '#') {
            while (c != '\n' && bs < end) {
                c = *bs++;
            }
        } else if (!pnm_space(c)) {
            break;
        }
    }

    s = str;
    while (bs < end && !pnm_space(c) && (s - str) < buf_size - 1) {
        *s++ = c;
        c = *bs++;
    }
    *s = '\0';
    sc->bytestream = bs;
}
