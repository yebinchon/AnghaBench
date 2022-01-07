
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 float APLL_MAX_FREQ ;
 float APLL_MIN_FREQ ;
 int EFUSE_BLK0_RDATA3_REG ;
 scalar_t__ GET_PERI_REG_BITS2 (int ,int,int) ;
 scalar_t__ rtc_clk_xtal_freq_get () ;

__attribute__((used)) static float i2s_apll_get_fi2s(int bits_per_sample, int sdm0, int sdm1, int sdm2, int odir)
{
    int f_xtal = (int)rtc_clk_xtal_freq_get() * 1000000;
    float fout = f_xtal * (sdm2 + sdm1 / 256.0f + sdm0 / 65536.0f + 4);
    if (fout < APLL_MIN_FREQ || fout > APLL_MAX_FREQ) {
        return APLL_MAX_FREQ;
    }
    float fpll = fout / (2 * (odir+2));
    return fpll/2;
}
