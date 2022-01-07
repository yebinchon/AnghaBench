
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int memcpy (scalar_t__*,scalar_t__*,int) ;

__attribute__((used)) static uint8_t calcMedian(uint8_t *list) {
    uint8_t workList[8], temp;
    int i, j;
    memcpy(workList, list, 8);
    for(i = 0; i < 7; i++) {
        for(j = i+1; j < 8; j++) {
            if(workList[j] < workList[i]) {
                temp = workList[i];
                workList[i] = workList[j];
                workList[j] = temp;
            }
        }
    }
    return workList[3];
}
