
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Status; char* filename; int ReadOnly; int * fp; int Size; } ;


 TYPE_1__ Movie ;
 int MovieGetSize (int *) ;
 char* MovieStatus ;
 scalar_t__ Playback ;
 int PlaybackFileOpened ;
 int ReadHeader (int *) ;
 scalar_t__ Recording ;
 int StopMovie () ;
 int YabauseReset () ;
 int * fopen (char const*,char*) ;
 scalar_t__ framecounter ;
 int free (char*) ;
 char* malloc (int) ;
 int strcpy (char*,char const*) ;

int PlayMovie(const char *filename) {

 char* str=malloc(1024);

 if(Movie.Status == Recording)
  StopMovie();


 if ((Movie.fp = fopen(filename, "r+b")) == ((void*)0))
 {
  free(str);
  return -1;
 }

 strcpy(str, filename);
 Movie.filename=str;
 PlaybackFileOpened=1;
 framecounter=0;
 Movie.ReadOnly = 1;
 Movie.Status=Playback;
 Movie.Size = MovieGetSize(Movie.fp);
 strcpy(MovieStatus, "Playback Started");
 ReadHeader(Movie.fp);
 YabauseReset();
 return 0;
}
