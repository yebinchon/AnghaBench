
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

char* strrchr( const char* s, int c ) {
  const char* end = s + strlen( s );

  do {
    if ( *end == ( char )c ) {
      return ( char * )end;
    }
  } while ( --end >= s );

  return ((void*)0);
}
