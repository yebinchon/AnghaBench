
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Status; char* filename; int * fp; scalar_t__ Rerecords; } ;


 TYPE_1__ Movie ;
 char* MovieStatus ;
 scalar_t__ Playback ;
 scalar_t__ Recording ;
 int RecordingFileOpened ;
 int StopMovie () ;
 int WriteHeader (int *) ;
 int YabauseReset () ;
 int * fopen (char const*,char*) ;
 scalar_t__ framecounter ;
 int free (char*) ;
 char* malloc (int) ;
 int strcpy (char*,char const*) ;

int SaveMovie(const char *filename) {

 char* str=malloc(1024);

 if(Movie.Status == Playback)
  StopMovie();

 if ((Movie.fp = fopen(filename, "w+b")) == ((void*)0))
 {
  free(str);
  return -1;
 }

 strcpy(str, filename);
 Movie.filename=str;
 RecordingFileOpened=1;
 framecounter=0;
 Movie.Status=Recording;
 strcpy(MovieStatus, "Recording Started");
 Movie.Rerecords=0;
 WriteHeader(Movie.fp);
 YabauseReset();
 return 0;
}
