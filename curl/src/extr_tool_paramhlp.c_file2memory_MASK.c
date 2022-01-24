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
typedef  int /*<<< orphan*/  ParameterError ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PARAM_NO_MEM ; 
 int /*<<< orphan*/  PARAM_OK ; 
 size_t FUNC1 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,size_t) ; 

ParameterError FUNC3(char **bufp, size_t *size, FILE *file)
{
  char *newbuf;
  char *buffer = NULL;
  size_t nused = 0;

  if(file) {
    size_t nread;
    size_t alloc = 512;
    do {
      if(!buffer || (alloc == nused)) {
        /* size_t overflow detection for huge files */
        if(alloc + 1 > ((size_t)-1)/2) {
          FUNC0(buffer);
          return PARAM_NO_MEM;
        }
        alloc *= 2;
        /* allocate an extra char, reserved space, for null termination */
        newbuf = FUNC2(buffer, alloc + 1);
        if(!newbuf) {
          FUNC0(buffer);
          return PARAM_NO_MEM;
        }
        buffer = newbuf;
      }
      nread = FUNC1(buffer + nused, 1, alloc-nused, file);
      nused += nread;
    } while(nread);
    /* null terminate the buffer in case it's used as a string later */
    buffer[nused] = '\0';
    /* free trailing slack space, if possible */
    if(alloc != nused) {
      newbuf = FUNC2(buffer, nused + 1);
      if(!newbuf) {
        FUNC0(buffer);
        return PARAM_NO_MEM;
      }
      buffer = newbuf;
    }
    /* discard buffer if nothing was read */
    if(!nused) {
      FUNC0(buffer); /* no string */
    }
  }
  *size = nused;
  *bufp = buffer;
  return PARAM_OK;
}