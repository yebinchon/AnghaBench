
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_IsColorString (char const*) ;

int Q_PrintStrlen( const char *string ) {
 int len;
 const char *p;

 if( !string ) {
  return 0;
 }

 len = 0;
 p = string;
 while( *p ) {
  if( Q_IsColorString( p ) ) {
   p += 2;
   continue;
  }
  p++;
  len++;
 }

 return len;
}
