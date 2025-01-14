
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ e_status ;
struct TYPE_8__ {int currentHandle; } ;
struct TYPE_7__ {scalar_t__ status; int playonwalls; int lastTime; int startTime; int tfps; int numQuads; scalar_t__ looping; scalar_t__ shader; scalar_t__ alterGameState; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int value; } ;


 scalar_t__ CA_CINEMATIC ;
 int CL_ScaledMilliseconds () ;
 scalar_t__ FMV_EOF ;
 scalar_t__ FMV_IDLE ;
 scalar_t__ FMV_LOOPED ;
 scalar_t__ FMV_PLAY ;
 int MAX_VIDEO_HANDLES ;
 int RoQInterrupt () ;
 int RoQReset () ;
 int RoQShutdown () ;
 int abs (int) ;
 TYPE_4__ cin ;
 TYPE_3__* cinTable ;
 TYPE_2__ cls ;
 TYPE_1__* com_timescale ;
 size_t currentHandle ;

e_status CIN_RunCinematic (int handle)
{

 int start = 0;
 int thisTime = 0;

 if (handle < 0 || handle>= MAX_VIDEO_HANDLES || cinTable[handle].status == FMV_EOF) return FMV_EOF;

 if (cin.currentHandle != handle) {
  currentHandle = handle;
  cin.currentHandle = currentHandle;
  cinTable[currentHandle].status = FMV_EOF;
  RoQReset();
 }

 if (cinTable[handle].playonwalls < -1)
 {
  return cinTable[handle].status;
 }

 currentHandle = handle;

 if (cinTable[currentHandle].alterGameState) {
  if ( cls.state != CA_CINEMATIC ) {
   return cinTable[currentHandle].status;
  }
 }

 if (cinTable[currentHandle].status == FMV_IDLE) {
  return cinTable[currentHandle].status;
 }


 thisTime = CL_ScaledMilliseconds()*com_timescale->value;
 if (cinTable[currentHandle].shader && (abs(thisTime - cinTable[currentHandle].lastTime))>100) {
  cinTable[currentHandle].startTime += thisTime - cinTable[currentHandle].lastTime;
 }

 cinTable[currentHandle].tfps = ((((CL_ScaledMilliseconds()*com_timescale->value) - cinTable[currentHandle].startTime)*3)/100);

 start = cinTable[currentHandle].startTime;
 while( (cinTable[currentHandle].tfps != cinTable[currentHandle].numQuads)
  && (cinTable[currentHandle].status == FMV_PLAY) )
 {
  RoQInterrupt();
  if (start != cinTable[currentHandle].startTime) {

    cinTable[currentHandle].tfps = ((((CL_ScaledMilliseconds()*com_timescale->value)
         - cinTable[currentHandle].startTime)*3)/100);
   start = cinTable[currentHandle].startTime;
  }
 }

 cinTable[currentHandle].lastTime = thisTime;

 if (cinTable[currentHandle].status == FMV_LOOPED) {
  cinTable[currentHandle].status = FMV_PLAY;
 }

 if (cinTable[currentHandle].status == FMV_EOF) {
   if (cinTable[currentHandle].looping) {
  RoQReset();
   } else {
  RoQShutdown();
   }
 }

 return cinTable[currentHandle].status;
}
