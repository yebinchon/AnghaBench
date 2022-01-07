
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int TLC59401_CHANNELS ;
 size_t TLC59401_LOOKUP_ENTRIES ;
 int ** lookupTable ;
 int pack12bit (size_t*,int,int ) ;

void TLC59401_GetCalibration(uint8_t index, uint8_t *values) {
    int i;
    if(index < TLC59401_LOOKUP_ENTRIES) {
        for(i = 0; i < TLC59401_CHANNELS; i++)
            pack12bit(values, i, lookupTable[i][index]);
    }
}
