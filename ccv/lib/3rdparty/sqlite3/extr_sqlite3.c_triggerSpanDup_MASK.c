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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static char *FUNC2(sqlite3 *db, const char *zStart, const char *zEnd){
  char *z = FUNC0(db, zStart, zEnd);
  int i;
  if( z ) for(i=0; z[i]; i++) if( FUNC1(z[i]) ) z[i] = ' ';
  return z;
}