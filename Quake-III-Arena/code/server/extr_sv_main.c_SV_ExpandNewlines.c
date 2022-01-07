
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;



char *SV_ExpandNewlines( char *in ) {
 static char string[1024];
 int l;

 l = 0;
 while ( *in && l < sizeof(string) - 3 ) {
  if ( *in == '\n' ) {
   string[l++] = '\\';
   string[l++] = 'n';
  } else {
   string[l++] = *in;
  }
  in++;
 }
 string[l] = 0;

 return string;
}
