
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Status; int Frames; scalar_t__ ReadOnly; int fp; } ;
struct TYPE_5__ {int * data; } ;
struct TYPE_4__ {int * data; } ;


 int ClearInput () ;
 int IncrementLagAndFrameCounter () ;
 int LagFrameFlag ;
 TYPE_3__ Movie ;
 int MovieStatus ;
 TYPE_2__ PORTDATA1 ;
 TYPE_1__ PORTDATA2 ;
 scalar_t__ Playback ;
 scalar_t__ PlaybackFileOpened ;
 scalar_t__ Recording ;
 scalar_t__ RecordingFileOpened ;
 int SetInputDisplayCharacters () ;
 void* Stopped ;
 int fclose (int ) ;
 int framelength ;
 size_t fread (int *,int,int,int ) ;
 int ftell (int ) ;
 int fwrite (int *,int,int,int ) ;
 int headersize ;
 int strcpy (int ,char*) ;

void DoMovie(void) {

 int x;
   size_t num_read = 0;

 if (Movie.Status == 0)
  return;

 IncrementLagAndFrameCounter();
 LagFrameFlag=1;
 SetInputDisplayCharacters();


 if(Movie.Status == Recording) {
  for (x = 0; x < 8; x++) {
   fwrite(&PORTDATA1.data[x], 1, 1, Movie.fp);
  }
  for (x = 0; x < 8; x++) {
   fwrite(&PORTDATA2.data[x], 1, 1, Movie.fp);
  }
 }

 if(Movie.Status == Playback) {
  for (x = 0; x < 8; x++) {
         num_read = fread(&PORTDATA1.data[x], 1, 1, Movie.fp);
  }
  for (x = 0; x < 8; x++) {
         num_read = fread(&PORTDATA2.data[x], 1, 1, Movie.fp);
  }


  if(((ftell(Movie.fp)-headersize)/framelength) >= Movie.Frames) {
   fclose(Movie.fp);
   PlaybackFileOpened=0;
   Movie.Status = Stopped;
   ClearInput();
   strcpy(MovieStatus, "Playback Stopped");
  }
 }


 if(Movie.Status != Recording && RecordingFileOpened) {
  fclose(Movie.fp);
  RecordingFileOpened=0;
  Movie.Status = Stopped;
  strcpy(MovieStatus, "Recording Stopped");
 }

 if(Movie.Status != Playback && PlaybackFileOpened && Movie.ReadOnly != 0) {
  fclose(Movie.fp);
  PlaybackFileOpened=0;
  Movie.Status = Stopped;
  strcpy(MovieStatus, "Playback Stopped");
 }
}
