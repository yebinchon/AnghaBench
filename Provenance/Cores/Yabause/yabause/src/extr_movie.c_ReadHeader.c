
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Rerecords; } ;
typedef int FILE ;


 TYPE_1__ Movie ;
 int SEEK_SET ;
 size_t fread (int *,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int headersize ;

__attribute__((used)) static void ReadHeader(FILE* fp) {
   size_t num_read = 0;

 fseek(fp, 0, SEEK_SET);

 fseek(fp, 172, SEEK_SET);
   num_read = fread(&Movie.Rerecords, sizeof(Movie.Rerecords), 1, fp);

 fseek(fp, headersize, SEEK_SET);
}
