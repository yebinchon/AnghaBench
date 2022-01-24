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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 

unsigned FUNC3(const unsigned char* buffer, size_t buffersize, const char* filename)
{
  FILE* file;
  file = FUNC1(filename, "wb" );
  if(!file) return 79;
  FUNC2((char*)buffer , 1 , buffersize, file);
  FUNC0(file);
  return 0;
}