
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ReadOnly; scalar_t__ Status; int Rerecords; int fp; } ;


 TYPE_1__ Movie ;
 int MovieStatus ;
 scalar_t__ Playback ;
 scalar_t__ Recording ;
 int RecordingFileOpened ;
 int SEEK_SET ;
 int TruncateMovie (TYPE_1__) ;
 int framecounter ;
 int framelength ;
 int fseek (int ,scalar_t__,int ) ;
 scalar_t__ headersize ;
 int strcpy (int ,char*) ;

void MovieLoadState(void) {


 if (Movie.ReadOnly == 1 && Movie.Status == Playback) {

  fseek (Movie.fp,headersize+(framecounter * framelength),SEEK_SET);
 }

 if(Movie.Status == Recording) {
  fseek (Movie.fp,headersize+(framecounter * framelength),SEEK_SET);
  Movie.Rerecords++;
 }

 if(Movie.Status == Playback && Movie.ReadOnly == 0) {
  Movie.Status = Recording;
  RecordingFileOpened=1;
  strcpy(MovieStatus, "Recording Resumed");
  TruncateMovie(Movie);
  fseek (Movie.fp,headersize+(framecounter * framelength),SEEK_SET);
  Movie.Rerecords++;
 }
}
