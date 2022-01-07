
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;
typedef int FILE ;


 int * FS_FileForHandle (int ) ;
 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;

int FS_filelength( fileHandle_t f ) {
 int pos;
 int end;
 FILE* h;

 h = FS_FileForHandle(f);
 pos = ftell (h);
 fseek (h, 0, SEEK_END);
 end = ftell (h);
 fseek (h, pos, SEEK_SET);

 return end;
}
