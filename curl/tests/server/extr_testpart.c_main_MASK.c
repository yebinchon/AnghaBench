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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char**,size_t*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 

int FUNC3(int argc, char **argv)
{
  char  *part;
  size_t partlen;

  if(argc< 3) {
    FUNC2("./testpart main sub\n");
  }
  else {
    int rc = FUNC1(&part, &partlen, argv[1], argv[2], stdin);
    size_t i;
    if(rc)
      return rc;
    for(i = 0; i < partlen; i++)
      FUNC2("%c", part[i]);
    FUNC0(part);
  }
  return 0;
}