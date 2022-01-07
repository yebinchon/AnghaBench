
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TLC59401_CHANNELS ;
 int dotCorrections ;
 int memcpy (int ,int *,int) ;

void TLC59401_SetDotCorrectionPacket(uint8_t *buf) {
    memcpy(dotCorrections, buf, TLC59401_CHANNELS*3/4);
}
