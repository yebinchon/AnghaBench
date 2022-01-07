
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;
typedef int FILE ;


 int * FS_FileForHandle (int ) ;
 int _IONBF ;
 int setvbuf (int *,int *,int ,int ) ;

void FS_ForceFlush( fileHandle_t f ) {
 FILE *file;

 file = FS_FileForHandle(f);
 setvbuf( file, ((void*)0), _IONBF, 0 );
}
