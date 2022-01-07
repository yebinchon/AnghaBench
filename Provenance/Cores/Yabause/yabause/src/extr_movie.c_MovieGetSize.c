
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Frames; } ;
typedef int FILE ;


 TYPE_1__ Movie ;
 int SEEK_END ;
 int SEEK_SET ;
 int framelength ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int headersize ;

__attribute__((used)) static int MovieGetSize(FILE* fp) {
 int size;
 int fpos;

 fpos = ftell(fp);

 fseek (fp,0,SEEK_END);
 size=ftell(fp);

 Movie.Frames=(size-headersize)/ framelength;

 fseek(fp, fpos, SEEK_SET);
 return(size);
}
