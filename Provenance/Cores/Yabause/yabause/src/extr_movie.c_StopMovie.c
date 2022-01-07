
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Status; scalar_t__ ReadOnly; int fp; } ;


 int ClearInput () ;
 TYPE_1__ Movie ;
 int MovieStatus ;
 scalar_t__ Playback ;
 scalar_t__ PlaybackFileOpened ;
 scalar_t__ Recording ;
 scalar_t__ RecordingFileOpened ;
 void* Stopped ;
 int WriteHeader (int ) ;
 int fclose (int ) ;
 int strcpy (int ,char*) ;

void StopMovie(void) {

 if(Movie.Status == Recording && RecordingFileOpened) {
  WriteHeader(Movie.fp);
  fclose(Movie.fp);
  RecordingFileOpened=0;
  Movie.Status = Stopped;
  ClearInput();
  strcpy(MovieStatus, "Recording Stopped");
 }

 if(Movie.Status == Playback && PlaybackFileOpened && Movie.ReadOnly != 0) {
  fclose(Movie.fp);
  PlaybackFileOpened=0;
  Movie.Status = Stopped;
  ClearInput();
  strcpy(MovieStatus, "Playback Stopped");
 }
}
