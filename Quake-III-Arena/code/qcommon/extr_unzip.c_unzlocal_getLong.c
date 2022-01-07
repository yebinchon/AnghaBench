
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uLong ;
typedef int FILE ;


 int LittleLong (int) ;
 int UNZ_OK ;
 int fread (int*,int,int,int *) ;

__attribute__((used)) static int unzlocal_getLong (FILE *fin, uLong *pX)
{
 int v;

 fread( &v, sizeof(v), 1, fin );

 *pX = LittleLong( v);
 return UNZ_OK;
}
