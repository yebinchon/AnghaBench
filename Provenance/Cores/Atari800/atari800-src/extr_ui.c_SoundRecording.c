
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buffer ;
struct TYPE_2__ {int (* fMessage ) (char*,int) ;} ;


 int FilenameMessage (char*,char*) ;
 int SndSave_CloseSoundFile () ;
 int SndSave_IsSoundFileOpen () ;
 scalar_t__ SndSave_OpenSoundFile (char*) ;
 TYPE_1__* UI_driver ;
 int Util_fileexists (char*) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (char*,int) ;
 int stub2 (char*,int) ;

__attribute__((used)) static void SoundRecording(void)
{
 if (!SndSave_IsSoundFileOpen()) {
  int no = 0;
  do {
   char buffer[32];
   snprintf(buffer, sizeof(buffer), "atari%03d.wav", no);
   if (!Util_fileexists(buffer)) {

    FilenameMessage(SndSave_OpenSoundFile(buffer)
     ? "Recording sound to file \"%s\""
     : "Can't write to file \"%s\"", buffer);
    return;
   }
  } while (++no < 1000);
  UI_driver->fMessage("All atariXXX.wav files exist!", 1);
 }
 else {
  SndSave_CloseSoundFile();
  UI_driver->fMessage("Recording stopped", 1);
 }
}
