
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FFMAX (int,int ) ;

__attribute__((used)) static int g729d_onset_decision(int past_onset, const int16_t* past_gain_code)
{
    if ((past_gain_code[0] >> 1) > past_gain_code[1])
        return 2;

    return FFMAX(past_onset-1, 0);
}
