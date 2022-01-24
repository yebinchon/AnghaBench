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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,size_t) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static char *FUNC7(FILE *fp)
{
  char buf[4096];
  char *nl = NULL;
  char *line = NULL;

  do {
    if(NULL == FUNC1(buf, sizeof(buf), fp))
      break;
    if(!line) {
      line = FUNC5(buf);
      if(!line)
        return NULL;
    }
    else {
      char *ptr;
      size_t linelen = FUNC6(line);
      ptr = FUNC2(line, linelen + FUNC6(buf) + 1);
      if(!ptr) {
        FUNC0(line);
        return NULL;
      }
      line = ptr;
      FUNC4(&line[linelen], buf);
    }
    nl = FUNC3(line, '\n');
  } while(!nl);

  if(nl)
    *nl = '\0';

  return line;
}