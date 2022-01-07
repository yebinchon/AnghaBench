
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tolower (int ) ;

void SanitizeString( char *in, char *out ) {
 while ( *in ) {
  if ( *in == 27 ) {
   in += 2;
   continue;
  }
  if ( *in < 32 ) {
   in++;
   continue;
  }
  *out++ = tolower( *in++ );
 }

 *out = 0;
}
