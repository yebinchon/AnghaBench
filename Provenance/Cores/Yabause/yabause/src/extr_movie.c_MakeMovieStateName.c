
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Status; } ;


 TYPE_1__ Movie ;
 scalar_t__ Playback ;
 scalar_t__ Recording ;
 int free (char*) ;
 char* malloc (size_t const) ;
 int sprintf (char*,char*,char const*) ;
 int strlen (char const*) ;

const char *MakeMovieStateName(const char *filename) {

 static char *retbuf = ((void*)0);
 if(Movie.Status == Recording || Movie.Status == Playback) {
  const size_t newsize = strlen(filename) + 5 + 1;
  free(retbuf);
  retbuf = malloc(newsize);
  if (!retbuf) {
   return ((void*)0);
  }
  sprintf(retbuf, "%smovie", filename);
  return retbuf;
 } else {
  return filename;
 }

}
