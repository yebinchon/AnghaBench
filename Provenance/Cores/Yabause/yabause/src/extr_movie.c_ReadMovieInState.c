
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MovieBufferStruct {char size; char* data; } ;
struct TYPE_2__ {scalar_t__ Status; scalar_t__ ReadOnly; int fp; } ;
typedef int FILE ;


 TYPE_1__ Movie ;
 scalar_t__ Playback ;
 scalar_t__ Recording ;
 int SEEK_SET ;
 size_t fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int fwrite (char*,int,int,int ) ;
 scalar_t__ malloc (char) ;
 int rewind (int ) ;

void ReadMovieInState(FILE* fp) {

 struct MovieBufferStruct tempbuffer;
 int fpos;
   size_t num_read = 0;


 if(Movie.Status == Recording || (Movie.Status == Playback && Movie.ReadOnly == 0)) {

  fpos=ftell(fp);
      num_read = fread(&tempbuffer.size, 4, 1, fp);
  if ((tempbuffer.data = (char *)malloc(tempbuffer.size)) == ((void*)0))
  {
   return;
  }
      num_read = fread(tempbuffer.data, 1, tempbuffer.size, fp);
  fseek(fp, fpos, SEEK_SET);

  rewind(Movie.fp);
  fwrite(tempbuffer.data, 1, tempbuffer.size, Movie.fp);
  rewind(Movie.fp);
 }
}
