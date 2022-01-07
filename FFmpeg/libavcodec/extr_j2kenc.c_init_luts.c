
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FFMAX (int,int ) ;
 int NMSEDEC_BITS ;
 int NMSEDEC_FRACBITS ;
 void** lut_nmsedec_ref ;
 void** lut_nmsedec_ref0 ;
 void** lut_nmsedec_sig ;
 void** lut_nmsedec_sig0 ;

__attribute__((used)) static void init_luts(void)
{
    int i, a,
        mask = ~((1<<NMSEDEC_FRACBITS)-1);

    for (i = 0; i < (1 << NMSEDEC_BITS); i++){
        lut_nmsedec_sig[i] = FFMAX(6*i - (9<<NMSEDEC_FRACBITS-1) << 12-NMSEDEC_FRACBITS, 0);
        lut_nmsedec_sig0[i] = FFMAX((i*i + (1<<NMSEDEC_FRACBITS-1) & mask) << 1, 0);

        a = (i >> (NMSEDEC_BITS-2)&2) + 1;
        lut_nmsedec_ref[i] = FFMAX((-2*i + (1<<NMSEDEC_FRACBITS) + a*i - (a*a<<NMSEDEC_FRACBITS-2))
                                    << 13-NMSEDEC_FRACBITS, 0);
        lut_nmsedec_ref0[i] = FFMAX(((i*i + (1-4*i << NMSEDEC_FRACBITS-1) + (1<<2*NMSEDEC_FRACBITS)) & mask)
                                    << 1, 0);
    }
}
