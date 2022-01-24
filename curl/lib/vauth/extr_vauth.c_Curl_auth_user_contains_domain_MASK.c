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
 int FALSE ; 
 int TRUE ; 
 int FUNC0 (char const*) ; 
 char* FUNC1 (char const*,char*) ; 

bool FUNC2(const char *user)
{
  bool valid = FALSE;

  if(user && *user) {
    /* Check we have a domain name or UPN present */
    char *p = FUNC1(user, "\\/@");

    valid = (p != NULL && p > user && p < user + FUNC0(user) - 1 ? TRUE :
                                                                    FALSE);
  }
#if defined(HAVE_GSSAPI) || defined(USE_WINDOWS_SSPI)
  else
    /* User and domain are obtained from the GSS-API credentials cache or the
       currently logged in user from Windows */
    valid = TRUE;
#endif

  return valid;
}