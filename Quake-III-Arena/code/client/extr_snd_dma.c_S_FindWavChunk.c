
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileHandle_t ;


 int FGetLittleLong (int ) ;
 int FS_Read (char*,int,int ) ;
 scalar_t__ strcmp (char*,char*) ;

int S_FindWavChunk( fileHandle_t f, char *chunk ) {
 char name[5];
 int len;
 int r;

 name[4] = 0;
 len = 0;
 r = FS_Read( name, 4, f );
 if ( r != 4 ) {
  return 0;
 }
 len = FGetLittleLong( f );
 if ( len < 0 || len > 0xfffffff ) {
  len = 0;
  return 0;
 }
 len = (len + 1 ) & ~1;


 if ( strcmp( name, chunk ) ) {
  return 0;
 }

 return len;
}
