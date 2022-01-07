
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int _periodictiming; int _periodiccycles; } ;


 int CDB_STAT_PLAY ;
 TYPE_1__* Cs2Area ;

int Cs2GetTimeToNextSector(void) {
   if ((Cs2Area->status & 0xF) != CDB_STAT_PLAY) {
      return 0;
   } else {

      int time = (Cs2Area->_periodictiming - Cs2Area->_periodiccycles + 2) / 3;
      return time<0 ? 0 : time;
   }
}
