
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ e_status ;
struct TYPE_4__ {scalar_t__ status; scalar_t__ alterGameState; int buf; int fileName; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_CINEMATIC ;
 int Com_DPrintf (char*,int ) ;
 scalar_t__ FMV_EOF ;
 int MAX_VIDEO_HANDLES ;
 int RoQShutdown () ;
 TYPE_2__* cinTable ;
 TYPE_1__ cls ;
 size_t currentHandle ;

e_status CIN_StopCinematic(int handle) {

 if (handle < 0 || handle>= MAX_VIDEO_HANDLES || cinTable[handle].status == FMV_EOF) return FMV_EOF;
 currentHandle = handle;

 Com_DPrintf("trFMV::stop(), closing %s\n", cinTable[currentHandle].fileName);

 if (!cinTable[currentHandle].buf) {
  return FMV_EOF;
 }

 if (cinTable[currentHandle].alterGameState) {
  if ( cls.state != CA_CINEMATIC ) {
   return cinTable[currentHandle].status;
  }
 }
 cinTable[currentHandle].status = FMV_EOF;
 RoQShutdown();

 return FMV_EOF;
}
