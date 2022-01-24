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
struct berval {int dummy; } ;
typedef  int /*<<< orphan*/  LDAPMessage ;

/* Variables and functions */
 int /*<<< orphan*/  LDAP_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct berval** FUNC3 (void*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char const*) ; 

struct berval * *
FUNC7(void * ld, LDAPMessage * entry, const char * attr)

{
  char * cp;
  struct berval * * result;

  cp = (char *) NULL;

  if(attr) {
    int i = FUNC6(attr);

    cp = FUNC5(i + 1);
    if(!cp) {
      FUNC4(ld, LDAP_NO_MEMORY, NULL,
                       FUNC2(LDAP_NO_MEMORY));
      return (struct berval * *) NULL;
    }

    FUNC0(cp, attr, i, i);
    cp[i] = '\0';
  }

  result = FUNC3(ld, entry, cp);
  FUNC1(cp);

  /* Result data are binary in nature, so they haven't been
     converted to EBCDIC. Therefore do not convert. */

  return result;
}