
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 double _ledcSetupTimerFreq (int,double,int) ;
 int ledcWrite (int,int) ;

double ledcWriteTone(uint8_t chan, double freq)
{
    if(chan > 15) {
        return 0;
    }
    if(!freq) {
        ledcWrite(chan, 0);
        return 0;
    }
    double res_freq = _ledcSetupTimerFreq(chan, freq, 10);
    ledcWrite(chan, 0x1FF);
    return res_freq;
}
