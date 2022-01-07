
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int PutBitContext ;


 int flush_put_bits (int *) ;
 int init_put_bits (int *,int *,int) ;
 int put_sbits (int *,int,int) ;

__attribute__((used)) static void put_line(uint8_t *dst, int size, int width, const int *runs)
{
    PutBitContext pb;
    int run, mode = ~0, pix_left = width, run_idx = 0;

    init_put_bits(&pb, dst, size);
    while (pix_left > 0) {
        run = runs[run_idx++];
        mode = ~mode;
        pix_left -= run;
        for (; run > 16; run -= 16)
            put_sbits(&pb, 16, mode);
        if (run)
            put_sbits(&pb, run, mode);
    }
    flush_put_bits(&pb);
}
