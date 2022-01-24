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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int FUNC3 (char const*) ; 

int FUNC4( const char* path ) {
  struct stat st;

  if ( FUNC2( path, &st) != 0 ) {
    return -1;
  }

  if ( FUNC0( st.st_mode ) ) {
    return FUNC1( path );
  } else {
    return FUNC3( path );
  }
}