
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 unsigned long long LLONG_MAX ;
 long long LLONG_MIN ;
 scalar_t__ errno ;
 scalar_t__ isalnum (char const) ;
 scalar_t__ isspace (char const) ;
 unsigned long long strtoull (char const*,char**,int) ;

long long int strtoll( const char* nptr, char** endptr, int base ) {
  int neg = 0;
  unsigned long long int v;
  const char* orig = nptr;

  while ( isspace( *nptr ) ) {
      nptr++;
  }

  if ( *nptr == '-' && isalnum( nptr[ 1 ] ) ) {
      neg = -1;
      nptr++;
  }

  v = strtoull( nptr, endptr, base );

  if ( endptr && *endptr == nptr ) {
      *endptr = ( char* )orig;
  }

  if ( v > LLONG_MAX ) {
    if ( v == 0x8000000000000000ull && neg ) {
      errno = 0;
      return v;
    }

    errno=ERANGE;

    return ( neg ? LLONG_MIN : LLONG_MAX );
  }

  return ( neg ? -v : v );
}
