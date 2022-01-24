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
typedef  int /*<<< orphan*/  LDAPMessage ;
typedef  int /*<<< orphan*/  BerElement ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

char *
FUNC6(void * ld,
                            LDAPMessage * entry, BerElement * * berptr)

{
  int i;
  char * cp;
  char * cp2;

  cp = FUNC2(ld, entry, berptr);

  if(!cp)
    return cp;

  i = FUNC5(cp);

  cp2 = FUNC3(i + 1);
  if(!cp2)
    return cp2;

  FUNC0(cp2, cp, i, i);
  cp2[i] = '\0';

  /* No way to allocate a buffer here, because it will be released by
     ldap_memfree() and ldap_memalloc() does not exist. The solution is to
     overwrite the EBCDIC buffer with ASCII to return it. */

  FUNC4(cp, cp2);
  FUNC1(cp2);
  return cp;
}