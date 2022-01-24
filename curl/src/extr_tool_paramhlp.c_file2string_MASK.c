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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  ParameterError ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PARAM_NO_MEM ; 
 int /*<<< orphan*/  PARAM_OK ; 
 scalar_t__ SIZE_T_MAX ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (size_t) ; 
 char* FUNC3 (char*,size_t) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char*) ; 

ParameterError FUNC7(char **bufp, FILE *file)
{
  char *string = NULL;
  if(file) {
    char *ptr;
    size_t alloc = 512;
    size_t alloc_needed;
    char buffer[256];
    size_t stringlen = 0;
    string = FUNC2(alloc);
    if(!string)
      return PARAM_NO_MEM;

    while(FUNC1(buffer, sizeof(buffer), file)) {
      size_t buflen;
      ptr = FUNC4(buffer, '\r');
      if(ptr)
        *ptr = '\0';
      ptr = FUNC4(buffer, '\n');
      if(ptr)
        *ptr = '\0';
      buflen = FUNC6(buffer);
      alloc_needed = stringlen + buflen + 1;
      if(alloc < alloc_needed) {
#if SIZEOF_SIZE_T < 8
        if(alloc >= (size_t)SIZE_T_MAX/2) {
          FUNC0(string);
          return PARAM_NO_MEM;
        }
#endif
        /* doubling is enough since the string to add is always max 256 bytes
           and the alloc size start at 512 */
        alloc *= 2;
        ptr = FUNC3(string, alloc);
        if(!ptr) {
          FUNC0(string);
          return PARAM_NO_MEM;
        }
        string = ptr;
      }
      FUNC5(string + stringlen, buffer);
      stringlen += buflen;
    }
  }
  *bufp = string;
  return PARAM_OK;
}