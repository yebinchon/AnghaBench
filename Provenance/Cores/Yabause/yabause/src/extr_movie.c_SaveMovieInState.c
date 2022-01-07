
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct MovieBufferStruct {int size; int* data; } ;
struct TYPE_2__ {scalar_t__ Status; int fp; } ;
typedef int IOCheck_struct ;
typedef int FILE ;


 TYPE_1__ Movie ;
 scalar_t__ Playback ;
 struct MovieBufferStruct ReadMovieIntoABuffer (int ) ;
 scalar_t__ Recording ;
 int SEEK_END ;
 int fseek (int *,int ,int ) ;
 int fwrite (int*,int,int,int *) ;

void SaveMovieInState(FILE* fp, IOCheck_struct check) {

 struct MovieBufferStruct tempbuffer;

 fseek(fp, 0, SEEK_END);

 if(Movie.Status == Recording || Movie.Status == Playback) {
  tempbuffer=ReadMovieIntoABuffer(Movie.fp);

  fwrite(&tempbuffer.size, 4, 1, fp);
  fwrite(tempbuffer.data, tempbuffer.size, 1, fp);
 }
}
