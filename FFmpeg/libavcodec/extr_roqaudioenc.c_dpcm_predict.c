
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFABS (int) ;
 int MAX_DPCM ;
 int ff_sqrt (int) ;

__attribute__((used)) static unsigned char dpcm_predict(short *previous, short current)
{
    int diff;
    int negative;
    int result;
    int predicted;

    diff = current - *previous;

    negative = diff<0;
    diff = FFABS(diff);

    if (diff >= MAX_DPCM)
        result = 127;
    else {
        result = ff_sqrt(diff);
        result += diff > result*result+result;
    }


 retry:
    diff = result*result;
    if (negative)
        diff = -diff;
    predicted = *previous + diff;


    if (predicted > 32767 || predicted < -32768) {
        result--;
        goto retry;
    }


    result |= negative << 7;

    *previous = predicted;

    return result;
}
