
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uLong ;
typedef int FILE ;


 int LittleShort (short) ;
 int UNZ_OK ;
 int fread (short*,int,int,int *) ;

__attribute__((used)) static int unzlocal_getShort (FILE* fin, uLong *pX)
{
 short v;

 fread( &v, sizeof(v), 1, fin );

 *pX = LittleShort( v);
 return UNZ_OK;
}
