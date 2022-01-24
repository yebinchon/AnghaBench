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
 int LDAP_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (void*,char*,char*) ; 
 char* FUNC3 (int) ; 
 int FUNC4 (char*) ; 

int
FUNC5(void * ld, char * dn, char * passwd)

{
  int i;
  char * edn;
  char * epasswd;

  edn = (char *) NULL;
  epasswd = (char *) NULL;

  if(dn) {
    i = FUNC4(dn);

    edn = FUNC3(i + 1);
    if(!edn)
      return LDAP_NO_MEMORY;

    FUNC0(edn, dn, i, i);
    edn[i] = '\0';
  }

  if(passwd) {
    i = FUNC4(passwd);

    epasswd = FUNC3(i + 1);
    if(!epasswd) {
      FUNC1(edn);
      return LDAP_NO_MEMORY;
    }

    FUNC0(epasswd, passwd, i, i);
    epasswd[i] = '\0';
  }

  i = FUNC2(ld, edn, epasswd);
  FUNC1(epasswd);
  FUNC1(edn);
  return i;
}