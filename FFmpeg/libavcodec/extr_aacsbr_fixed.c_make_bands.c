
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int16_t ;


 int CONST_LN2 ;
 int fixed_exp (int) ;
 int fixed_log (int) ;

__attribute__((used)) static void make_bands(int16_t* bands, int start, int stop, int num_bands)
{
    int k, previous, present;
    int base, prod, nz = 0;

    base = (stop << 23) / start;
    while (base < 0x40000000){
        base <<= 1;
        nz++;
    }
    base = fixed_log(base - 0x80000000);
    base = (((base + 0x80) >> 8) + (8-nz)*CONST_LN2) / num_bands;
    base = fixed_exp(base);

    previous = start;
    prod = start << 23;

    for (k = 0; k < num_bands-1; k++) {
        prod = (int)(((int64_t)prod * base + 0x400000) >> 23);
        present = (prod + 0x400000) >> 23;
        bands[k] = present - previous;
        previous = present;
    }
    bands[num_bands-1] = stop - previous;
}
