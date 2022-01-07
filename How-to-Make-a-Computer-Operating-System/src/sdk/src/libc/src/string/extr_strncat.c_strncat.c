
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char* strncat( char* d, const char* s, size_t c ) {
  char* tmp = d;

  if ( c > 0 ) {
    while ( *d ) d++;
    while ( ( *d++ = *s++ ) ) {
      if ( --c == 0 ) {
        *d = 0;
        break;
      }
    }
  }

  return tmp;
}
