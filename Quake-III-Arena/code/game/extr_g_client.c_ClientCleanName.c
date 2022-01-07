
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ColorIndex (char const) ;
 char Q_COLOR_ESCAPE ;
 int Q_strncpyz (char*,char*,int) ;

__attribute__((used)) static void ClientCleanName( const char *in, char *out, int outSize ) {
 int len, colorlessLen;
 char ch;
 char *p;
 int spaces;


 outSize--;

 len = 0;
 colorlessLen = 0;
 p = out;
 *p = 0;
 spaces = 0;

 while( 1 ) {
  ch = *in++;
  if( !ch ) {
   break;
  }


  if( !*p && ch == ' ' ) {
   continue;
  }


  if( ch == Q_COLOR_ESCAPE ) {

   if( !*in ) {
    break;
   }


   if( ColorIndex(*in) == 0 ) {
    in++;
    continue;
   }


   if( len > outSize - 2 ) {
    break;
   }

   *out++ = ch;
   *out++ = *in++;
   len += 2;
   continue;
  }


  if( ch == ' ' ) {
   spaces++;
   if( spaces > 3 ) {
    continue;
   }
  }
  else {
   spaces = 0;
  }

  if( len > outSize - 1 ) {
   break;
  }

  *out++ = ch;
  colorlessLen++;
  len++;
 }
 *out = 0;


 if( *p == 0 || colorlessLen == 0 ) {
  Q_strncpyz( p, "UnnamedPlayer", outSize );
 }
}
