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
 scalar_t__ FUNC0 (char const) ; 
 char FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(const char *zLine){
  while( FUNC0(zLine[0]) ){ zLine++; };
  if( zLine[0]=='/' && FUNC2(&zLine[1]) ){
    return 1;  /* Oracle */
  }
  if( FUNC1(zLine[0])=='g' && FUNC1(zLine[1])=='o'
         && FUNC2(&zLine[2]) ){
    return 1;  /* SQL Server */
  }
  return 0;
}