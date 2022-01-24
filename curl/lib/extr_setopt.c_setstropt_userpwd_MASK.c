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
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,char**,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static CURLcode FUNC4(char *option, char **userp, char **passwdp)
{
  CURLcode result = CURLE_OK;
  char *user = NULL;
  char *passwd = NULL;

  /* Parse the login details if specified. It not then we treat NULL as a hint
     to clear the existing data */
  if(option) {
    result = FUNC0(option, FUNC3(option),
                                      (userp ? &user : NULL),
                                      (passwdp ? &passwd : NULL),
                                      NULL);
  }

  if(!result) {
    /* Store the username part of option if required */
    if(userp) {
      if(!user && option && option[0] == ':') {
        /* Allocate an empty string instead of returning NULL as user name */
        user = FUNC2("");
        if(!user)
          result = CURLE_OUT_OF_MEMORY;
      }

      FUNC1(*userp);
      *userp = user;
    }

    /* Store the password part of option if required */
    if(passwdp) {
      FUNC1(*passwdp);
      *passwdp = passwd;
    }
  }

  return result;
}