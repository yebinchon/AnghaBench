
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int* file; } ;
struct TYPE_5__ {int startTime; int lastTime; int RoQPlayed; int roqFPS; int numQuads; int roq_id; int RoQFrameSize; int roq_flags; } ;
struct TYPE_4__ {int value; } ;


 int CL_ScaledMilliseconds () ;
 TYPE_3__ cin ;
 TYPE_2__* cinTable ;
 TYPE_1__* com_timescale ;
 size_t currentHandle ;

__attribute__((used)) static void RoQ_init( void )
{

 cinTable[currentHandle].startTime = cinTable[currentHandle].lastTime = CL_ScaledMilliseconds()*com_timescale->value;

 cinTable[currentHandle].RoQPlayed = 24;


 cinTable[currentHandle].roqFPS = cin.file[ 6] + cin.file[ 7]*256;

 if (!cinTable[currentHandle].roqFPS) cinTable[currentHandle].roqFPS = 30;

 cinTable[currentHandle].numQuads = -1;

 cinTable[currentHandle].roq_id = cin.file[ 8] + cin.file[ 9]*256;
 cinTable[currentHandle].RoQFrameSize = cin.file[10] + cin.file[11]*256 + cin.file[12]*65536;
 cinTable[currentHandle].roq_flags = cin.file[14] + cin.file[15]*256;

 if (cinTable[currentHandle].RoQFrameSize > 65536 || !cinTable[currentHandle].RoQFrameSize) {
  return;
 }

}
