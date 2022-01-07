
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fread (void*,int,int,int *) ;

int Sys_StreamedRead( void *buffer, int size, int count, FILE *f ) {
 return fread( buffer, size, count, f );
}
