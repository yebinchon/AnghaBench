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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char**,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static char *FUNC5(const char *prompt)
{
  char *line = NULL;

#ifdef HAVE_READLINE
  line = readline("(pdb) ");
  if (line == NULL)
    return NULL;
  if (line[0] != 0)
    add_history(line);
#else
  size_t size = 0;
  ssize_t ret;

  FUNC3("(pdb) ");
  FUNC1(stdout);
  ret = FUNC2(&line, &size, stdin);
  if (ret < 0)
    return NULL;
  if (ret > 0 && line[ret - 1] == '\n')
    line[ret - 1] = 0;
#endif

  return line;
}