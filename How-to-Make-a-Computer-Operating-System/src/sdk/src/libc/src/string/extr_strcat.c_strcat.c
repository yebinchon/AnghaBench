
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* strcat( char* d, const char* s ) {
  char* tmp = d;

  while ( *d ) d++;
  while ( ( *d++ = *s++ ) != 0 ) ;

  return tmp;
}
