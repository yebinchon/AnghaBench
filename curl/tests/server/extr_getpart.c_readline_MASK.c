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
 int GPE_END_OF_FILE ; 
 int GPE_OK ; 
 int GPE_OUT_OF_MEMORY ; 
 int FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (char*,size_t) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(char **buffer, size_t *bufsize, FILE *stream)
{
  size_t offset = 0;
  char *newptr;

  if(!*buffer) {
    *buffer = FUNC2(128);
    if(!*buffer)
      return GPE_OUT_OF_MEMORY;
    *bufsize = 128;
  }

  for(;;) {
    size_t length;
    int bytestoread = FUNC0(*bufsize - offset);

    if(!FUNC1(*buffer + offset, bytestoread, stream))
      return (offset != 0) ? GPE_OK : GPE_END_OF_FILE;

    length = offset + FUNC4(*buffer + offset);
    if(*(*buffer + length - 1) == '\n')
      break;
    offset = length;
    if(length < *bufsize - 1)
      continue;

    newptr = FUNC3(*buffer, *bufsize * 2);
    if(!newptr)
      return GPE_OUT_OF_MEMORY;
    *buffer = newptr;
    *bufsize *= 2;
  }

  return GPE_OK;
}