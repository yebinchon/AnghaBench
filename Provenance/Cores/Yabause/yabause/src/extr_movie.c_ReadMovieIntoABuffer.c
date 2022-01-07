
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MovieBufferStruct {int size; char* data; } ;
typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 size_t fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 void* ftell (int *) ;
 scalar_t__ malloc (int) ;
 int rewind (int *) ;

struct MovieBufferStruct ReadMovieIntoABuffer(FILE* fp) {

 int fpos;
 struct MovieBufferStruct tempbuffer;
   size_t num_read = 0;

 fpos = ftell(fp);

 fseek (fp,0,SEEK_END);
 tempbuffer.size=ftell(fp);
 rewind(fp);

 tempbuffer.data = (char*) malloc (sizeof(char)*tempbuffer.size);
   num_read = fread(tempbuffer.data, 1, tempbuffer.size, fp);

 fseek(fp, fpos, SEEK_SET);
 return(tempbuffer);
}
