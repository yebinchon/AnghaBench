
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_sprintf (char*,int ,char*,...) ;
 int MAX_OSPATH ;

void CL_DemoFilename( int number, char *fileName ) {
 int a,b,c,d;

 if ( number < 0 || number > 9999 ) {
  Com_sprintf( fileName, MAX_OSPATH, "demo9999.tga" );
  return;
 }

 a = number / 1000;
 number -= a*1000;
 b = number / 100;
 number -= b*100;
 c = number / 10;
 number -= c*10;
 d = number;

 Com_sprintf( fileName, MAX_OSPATH, "demo%i%i%i%i"
  , a, b, c, d );
}
