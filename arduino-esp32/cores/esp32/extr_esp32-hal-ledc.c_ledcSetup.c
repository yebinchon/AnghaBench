
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int LOW ;
 int _ledcSetupChannel (int,int ) ;
 double _ledcSetupTimerFreq (int,double,int) ;

double ledcSetup(uint8_t chan, double freq, uint8_t bit_num)
{
    if(chan > 15) {
        return 0;
    }
    double res_freq = _ledcSetupTimerFreq(chan, freq, bit_num);
    _ledcSetupChannel(chan, LOW);
    return res_freq;
}
