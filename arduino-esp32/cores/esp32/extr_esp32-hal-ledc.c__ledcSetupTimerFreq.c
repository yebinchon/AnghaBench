
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int LEDC_DIV_NUM_HSTIMER0_V ;
 int _ledcSetupTimer (int,int,int,int) ;
 int getApbFrequency () ;

__attribute__((used)) static double _ledcSetupTimerFreq(uint8_t chan, double freq, uint8_t bit_num)
{
    uint64_t clk_freq = getApbFrequency();
    clk_freq <<= 8;
    uint32_t div_num = (clk_freq >> bit_num) / freq;
    bool apb_clk = 1;
    if(div_num > LEDC_DIV_NUM_HSTIMER0_V) {
        clk_freq /= 80;
        div_num = (clk_freq >> bit_num) / freq;
        if(div_num > LEDC_DIV_NUM_HSTIMER0_V) {
            div_num = LEDC_DIV_NUM_HSTIMER0_V;
        }
        apb_clk = 0;
    } else if(div_num < 256) {
        div_num = 256;
    }
    _ledcSetupTimer(chan, div_num, bit_num, apb_clk);


    return (clk_freq >> bit_num) / (double)div_num;
}
