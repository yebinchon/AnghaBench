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
struct pdb_cpu {int dummy; } ;
typedef  int /*<<< orphan*/  prev ;

/* Variables and functions */
 int FUNC0 (struct pdb_cpu*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(struct pdb_cpu *cpu)
{
  static char prev[128];
  int ret;

  while (1) {
    char *line, *cline;

    line = FUNC2("(pdb) ");
    if (line == NULL)
      break;
    if (line[0] == 0)
      cline = prev;
    else {
      cline = line;
      FUNC3(prev, line, sizeof(prev));
    }
      
    ret = FUNC0(cpu, cline);
    FUNC1(line);

    if (ret == 0)
      break;
  }
}