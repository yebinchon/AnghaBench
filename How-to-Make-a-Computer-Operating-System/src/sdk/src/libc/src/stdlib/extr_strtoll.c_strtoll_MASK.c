#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ ERANGE ; 
 unsigned long long LLONG_MAX ; 
 long long LLONG_MIN ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 unsigned long long FUNC2 (char const*,char**,int) ; 

long long int FUNC3( const char* nptr, char** endptr, int base ) {
  int neg = 0;
  unsigned long long int v;
  const char* orig = nptr;

  while ( FUNC1( *nptr ) ) {
      nptr++;
  }

  if ( *nptr == '-' && FUNC0( nptr[ 1 ] ) ) {
      neg = -1;
      nptr++;
  }

  v = FUNC2( nptr, endptr, base );

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